import 'package:flutter/material.dart';
import 'package:mcdonald_project/login/components/login_text_field.dart';

import '../nav.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _loginPageAppBar(context),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Center(
              child: SizedBox(
                  width: 250,
                  height: 250,
                  child: Image.asset("assets/login_images/login.png")),
            ),
          ),
          SizedBox(height: 20,),
          LoginTextFiled(text: '아이디(이메일)'),
          SizedBox(height: 20,),
          LoginTextFiled(text: '비밀번호'),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0,bottom: 10.0),
            child: SizedBox(
              width: 300,
              height: 50,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        ))),
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Text(
                  "로그인",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              width: 300,
              height: 50,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ))),
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Text(
                  "회원가입",
                  style: TextStyle(color: Colors.redAccent, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  AppBar _loginPageAppBar(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.redAccent,
      backgroundColor: Colors.white,
      elevation: 0.8,
      title: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          child: Text(
            " ",
            style: TextStyle(color: Colors.redAccent),
          )),
    );
  }
}
