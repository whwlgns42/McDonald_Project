import 'package:flutter/material.dart';

class BurgerMenuList extends StatelessWidget {
  const BurgerMenuList(
      {Key? key,
      required this.imageName,
      required this.title,
      required this.info})
      : super(key: key);

  final String imageName;
  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: 150,
                      height: 100,
                      child: Image.asset(
                        "assets/menu_images/${imageName}.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              _burgerInfo(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Text(
              info,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _burgerInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          width: 160,
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              onPressed: () {
                print("눌러짐");
              },
              child: Text(
                '자세히보기',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
        )
      ],
    );
  }
}
