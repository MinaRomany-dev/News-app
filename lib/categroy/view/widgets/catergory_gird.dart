import 'package:flutter/material.dart';
import 'package:newsapp/apptheme.dart';
import 'package:newsapp/categroy/data/model/categorymodel.dart';
import 'package:newsapp/categroy/view/widgets/categoryitem.dart';


class Category_Grid extends StatelessWidget {
  void Function(Categorymodel) onSelectedcategory;

  Category_Grid({required this.onSelectedcategory});
 
  final categories =[
Categorymodel(id: 'sports', name: 'Sports', imagename: 'sports', color: Apptheme.primarycolor),
Categorymodel(id: 'technology', name: 'technology', imagename: 'sports', color: Apptheme.primarycolor),
Categorymodel(id: 'health', name: 'health', imagename: 'health', color: Apptheme.primarycolor),
Categorymodel(id: 'general', name: 'general', imagename: 'environment', color: Apptheme.primarycolor),
Categorymodel(id: 'science', name: 'science', imagename: "science", color: Apptheme.primarycolor),
Categorymodel(id: 'business', name: 'business', imagename: 'bussines', color: Apptheme.primarycolor),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pick your category',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Apptheme.grey)),
                Text(
                  'of interests',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Apptheme.grey),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 24,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      onSelectedcategory(categories[index]);
                    },
                    child: Category_Item(cat: categories[index], index: index),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
