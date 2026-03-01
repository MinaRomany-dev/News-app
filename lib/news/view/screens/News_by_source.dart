import 'package:flutter/material.dart';
import 'package:newsapp/news/data/data_source/news_data_source.dart';
import 'package:newsapp/news/data/models/newsbysource.dart';
import 'package:newsapp/news/view/widgets/news_item.dart';

import 'package:newsapp/sources/data/models/source.dart';
import 'package:newsapp/sources/view/widgets/Tabitem.dart';

class SourcesTabs extends StatefulWidget {
  static String routename = "/sourcescreen";
 final  List<Source> Sources ;

 const  SourcesTabs({required this.Sources});

  @override
  State<SourcesTabs> createState() => _NewsSourcesScreenState();
}

class _NewsSourcesScreenState extends State<SourcesTabs> {
  bool val = true;
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: DefaultTabController(
            length: widget.Sources.length,
            child: TabBar(
              onTap: (value) {
                currentindex = value;
                setState(() {});
              },
              tabAlignment: TabAlignment.start,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              isScrollable: true,
              tabs:  widget.Sources.map((element) => TabItem(
                    isSelected: widget.Sources.indexOf(element) == currentindex,
                    name: element.name!,
                  )).toList(),
            ),
          ),
        ),
       Expanded(
            child: FutureBuilder<Newsbysource>(
              future: NewsDataSource.getNews_Withsource(
                  widget.Sources[currentindex].id ?? ""),
              builder: (context, snapshot) {
                if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const Center(
                      child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return const Center(child: Text("Error"));
                }// hellomina#91

                if (!snapshot.hasData ||
                    snapshot.data!.articles == null) {
                  return const Center(child: Text("No Data"));
                }
                final articles = snapshot.data!.articles!;
                return ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: articles.length,
                  itemBuilder: (_, index) {
                    return News_item(article: articles[index]);
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}
