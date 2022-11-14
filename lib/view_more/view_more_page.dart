import 'package:flutter/material.dart';

import '../nav.dart';

class ViewMorePage extends StatelessWidget {
  const ViewMorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _viewMorePageAppBar(),
      body: Container(
        height: 800,
        child: Stack(
          children: [
            Image.asset(
              'assets/view_more_images/bg.png',
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                _buildViewMore(Icons.person_outline, "마이 페이지"),
                _buildViewMore(Icons.fact_check_outlined, "이용약관"),
                _buildViewMore(Icons.playlist_add_check_rounded, "개인정보 처리방침"),
                _buildViewMore(Icons.mail_outline, "고객문의"),
                _buildViewMore(Icons.search, "자주 묻는 질문"),
                _buildViewMore(Icons.language, "국가/언어 변경"),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  AppBar _viewMorePageAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.8,
      title: Text(
        "더보기",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildViewMore(IconData icon, String name) {
    return Column(
      children: [
        Stack(children: [
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      icon,
                      color: Colors.redAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 360,top: 10),
            child: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.grey,
            ),
          )
        ]),

      ],
    );
  }
}
