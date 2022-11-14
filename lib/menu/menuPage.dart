import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcdonald_project/nav.dart';

import 'components/burgerListInfo.dart';
import 'components/menuTopSide.dart';
import 'components/menuTopSideInfo.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _menuPageAppBar(),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuInfoTopSide(),
              MenuTopSideInfo(),
              BurgerMenuList(
                  imageName: "1",
                  title: "01. 버거",
                  info:
                      "빅맥®에서 맥스파이스™ 상하이 버거 까지, 주문 즉시 바로 조리해 더욱 맛있는, 맥도날드의 다양한 버거를 소개합니다."),
              SizedBox(
                height: 30,
              ),
              BurgerMenuList(
                  imageName: "2",
                  title: "02. 맥런치",
                  info: "오전 10시 30분부터 오후 2시까지 점심만의 특별한 할인으로 맥런치 세트를 즐겨보세요!"),
              SizedBox(height: 30),
              BurgerMenuList(
                  imageName: "3",
                  title: "03. 맥모닝",
                  info:
                      "새벽 4시부터 오전 10시 30분까지 갓 구워내 신선한 맥모닝으로 따뜻한 아침 식사를 챙겨 드세요!"),
              SizedBox(height: 30),
              BurgerMenuList(
                  imageName: "4",
                  title: "04. 해피 스낵",
                  info: "시즌 별 인기 스낵을 하루종일 할인 가격으로 만나보세요!"),
              SizedBox(height: 30),
              BurgerMenuList(
                  imageName: "5",
                  title: "05. 사이드 & 디저트",
                  info: "언제나 즐겁게, 맥카페와 다양한 음료를 부담없이 즐기세요!"),
              SizedBox(height: 30),
              BurgerMenuList(
                  imageName: "6",
                  title: "06. 맥카페 & 음료",
                  info: "맛과 즐거움 모두 해피밀을 통해 느껴보세요!"),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  AppBar _menuPageAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.8,
      title: Text(
        "Menu - 맥도날드",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
