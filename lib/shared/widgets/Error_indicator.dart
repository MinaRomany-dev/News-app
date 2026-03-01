import 'package:flutter/material.dart';

class Error_Indicator extends StatelessWidget {
   const Error_Indicator({super.key, required this.error_msg});
  final String error_msg;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(error_msg),);
  }
}