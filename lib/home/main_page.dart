import 'dart:ui';

import 'package:flutter/material.dart';

import '../nav.dart';
import 'components/photo.dart';
import 'components/servicebutton.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Photo(),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 30),
            child: Text("맥도날드 앱에서만 만날 수 있는 특별한 혜택!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),),
          ),

          ServiceButton(imageName1: "mac1", imageName2: "mac2"),
          SizedBox(height: 10,),
          ServiceButton(imageName1: "mac3", imageName2: "mac4"),
          SizedBox(height: 10,),
          ServiceButton(imageName1: "mac5", imageName2: "mac6"),
          SizedBox(height: 10,),
          ServiceButton(imageName1: "mac7", imageName2: "mac8"),
          SizedBox(height: 10,),
          ServiceButton(imageName1: "mac9", imageName2: "mac10"),
          SizedBox(height: 10,),
          ServiceButton(imageName1: "mac11", imageName2: "mac12"),
          SizedBox(height: 10,),
          ServiceButton(imageName1: "mac13", imageName2: "mac14"),
          SizedBox(height: 10,),
          ServiceButton(imageName1: "mac15", imageName2: "mac16"),
          SizedBox(height: 10,),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }


}
