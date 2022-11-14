import 'package:flutter/material.dart';

class FindStoreFooter extends StatelessWidget {
  const FindStoreFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Text(
              "한국 맥도날드(유)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFindStoreFooterText("주소", "서울 종로구 공평동 70"),
              _buildFindStoreFooterText(" ", "서울 특별시 종로구 종로51(종로타워)"),
              _buildFindStoreFooterText("전화번호", "1600-5252"),
              _buildFindStoreFooterText("이용시간", " "),
              _buildFindStoreFooterText("이용가능서비스", " "),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFindStoreFooterText(String inTitle, String inText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            width: 100,
            child: Text(
              inTitle,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            child: Text(
              inText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
