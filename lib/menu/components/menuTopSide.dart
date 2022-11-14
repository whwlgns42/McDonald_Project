import 'package:flutter/material.dart';

class MenuInfoTopSide extends StatelessWidget {
  const MenuInfoTopSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
      child:Text("Menu",
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    ),);
  }
}
