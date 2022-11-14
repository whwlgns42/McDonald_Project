import 'package:flutter/material.dart';

class MenuTopSideInfo extends StatelessWidget {
  const MenuTopSideInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 50),
      child:Text("맥도날드의 다양한 메뉴를 소개합니다.",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),);
  }
}
