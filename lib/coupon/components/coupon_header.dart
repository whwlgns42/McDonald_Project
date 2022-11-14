import 'package:flutter/material.dart';
import 'package:mcdonald_project/login/login_page.dart';

class CouponHeader extends StatelessWidget {
  const CouponHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/coupon_images/logo.png",
                ),
                SizedBox(
                  height: 15,
                ),
                Text("지금 가입하고 포인트를 적립하세요",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "마이 맥도날드 리워드 회원에게 제공되는 다양한 쿠폰과 리워드를 만나보세요",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 13,),
                _buildLoginButton(context),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
Widget _buildLoginButton(BuildContext context) {
  return InkWell(
    onTap: () {
      print("로그인 버튼 눌러짐");
      Navigator.pushNamed(context, "/login");
    },
    child: Container(
      alignment: Alignment.center,
      width: 100,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        "로그인",
        style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20,),
      ),
    ),
  );
}