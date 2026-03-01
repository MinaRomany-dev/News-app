import 'package:flutter/material.dart';
import 'package:newsapp/news/view/screens/News_by_source.dart';
import 'package:newsapp/shared/widgets/Error_indicator.dart';
import 'package:newsapp/sources/viewmodel%20as%20statemanag/sources_viewmodel.dart';
import 'package:provider/provider.dart';

class SourceTabs extends StatefulWidget {
  final String categid;
  const SourceTabs({super.key, required this.categid});

  @override
  State<SourceTabs> createState() => _SourceTabsState();
}

class _SourceTabsState extends State<SourceTabs> {
  bool isLoading = true;
 final Viewmodel = SourcesViewmodel();
  @override
  void initState() {
    super.initState();
    Viewmodel.getSources(widget.categid);
  }

  @override
  Widget build(BuildContext context) {
   
return ChangeNotifierProvider(create: (context)=>Viewmodel,child: Consumer<SourcesViewmodel>(builder: (_, value, __) {
if(value.isloading ){
   return const Center(
         child: CircularProgressIndicator(color: Colors.green),
       );
}
 else if(Viewmodel.errormessage !=null){
  return Error_Indicator(error_msg: Viewmodel.errormessage!,);
}
else{
   return SourcesTabs(Sources: Viewmodel.mysources);
}
} 
,) ,);
  
  }
}