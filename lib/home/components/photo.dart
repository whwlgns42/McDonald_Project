import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 350,
          width: 600,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/home_images/burger1.png",
              ),
            ),
          ),
        ),
        // Photo(),
      ],
    );
  }
}

