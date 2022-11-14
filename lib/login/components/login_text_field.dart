import 'package:flutter/material.dart';

class LoginTextFiled extends StatelessWidget {
  const LoginTextFiled({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 330,
          height: 50,
          child: TextFormField(
            validator: (value) => value!.isEmpty ? "Please enter some text" : null,
            obscureText: text=="Password" ? true : false,
            decoration: InputDecoration(
              hintText: "$text",
              enabledBorder: OutlineInputBorder(
                // 활성화 되었을 때
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
