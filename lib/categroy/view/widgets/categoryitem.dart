import 'package:flutter/material.dart';
import 'package:newsapp/categroy/data/model/categorymodel.dart';

class Category_Item extends StatelessWidget {
  Categorymodel cat;
  int index;
  Category_Item({required this.cat, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 186, 15, 3),
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(25),
          topEnd: Radius.circular(25),
          bottomEnd: index.isOdd ? Radius.circular(20) : Radius.circular(0),
          bottomStart: Radius.circular(index.isEven ? 25 : 0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            fit: BoxFit.fill,
            "assets/images/${cat.imagename}.png"),
          Text(
            cat.name,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
