import 'package:flutter/material.dart';
import 'package:newsapp/apptheme.dart';

class TabItem extends StatefulWidget {
  String name;
  bool isSelected;
  TabItem({required this.name, required this.isSelected});

  @override
  State<TabItem> createState() => _TabItemState();
}

class _TabItemState extends State<TabItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2),
            color: widget.isSelected ? Colors.green : Colors.white,
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Text(
            widget.name,
            style: TextStyle(
                color:
                    widget.isSelected ? Colors.white : Apptheme.primarycolor),
          ),
        ));
  }
}

