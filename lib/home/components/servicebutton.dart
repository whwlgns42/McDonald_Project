import 'package:flutter/material.dart';

class ServiceButton extends StatelessWidget {
  const ServiceButton(
      {Key? key, required this.imageName1, required this.imageName2})
      : super(key: key);

  final String imageName1;
  final String imageName2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 13,
      ),
      child: Row(
        children: [
          Container(
            width: 180,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white10,
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/home_images/$imageName1.png"),
              ),
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Container(
            width: 180,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white12),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/home_images/$imageName2.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
