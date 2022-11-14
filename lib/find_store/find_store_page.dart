import 'package:flutter/material.dart';

import '../nav.dart';
import 'components/find_store_btn.dart';
import 'components/find_store_footer.dart';
import 'components/find_store_map.dart';
import 'components/find_store_textform.dart';

class FindStorePage extends StatelessWidget {
  const FindStorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildFindStoreAppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Image(
              image: AssetImage("assets/find_store_images/storeBg.png"),
              fit: BoxFit.fill),
          SizedBox(height: 40),
          FindStoreMapBtn(),
          SizedBox(height: 40),
          FindStoreTextForm(),
          SizedBox(height: 50),
          FindStoreMap(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(onPressed: (){
                print("내 위치 조회 클릭");
              }, child: Text("내 위치 중심으로 지도보기",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber
                ),),
            ),
          ),
          SizedBox(height: 40),
          _buildLine(),
          SizedBox(height: 30),
          FindStoreFooter(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: double.infinity,
              height: 2,
              color: Color.fromRGBO(220, 220, 220, 1.0),
            ),
          ),
          SizedBox(height: 50),
          _buildLine(),
          SizedBox(height: 50),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  AppBar _buildFindStoreAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.8,
      title: Text(
        "매장찾기",
        style: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}

Widget _buildLine() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
      width: double.infinity,
      height: 2,
      color: Colors.grey,
    ),
  );
}
