import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late int selectedId =0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSelectorButton(context, 0, Icons.home_outlined, "홈", "/home"),
          _buildSelectorButton(context, 1, Icons.favorite_border, "쿠폰", "/coupon"),
          _buildSelectorButton(context, 2, Icons.fastfood_outlined, "메뉴","/menu"),
          _buildSelectorButton(context, 3, Icons.map_outlined, "매장찾기", "/findStore"),
          _buildSelectorButton(context, 4, Icons.dehaze_outlined, "더보기","/viewMore"),
        ],
      ),
    );
  }

  Widget _buildSelectorButton(
    BuildContext context,
    int id,
    IconData icon,
    String name,
    String route,
  ) {
    return SizedBox(
      width: 70,
      height: 70,
      child: InkWell(
        onTap: () {
          setState(() {
            selectedId = id;
          });
            print("$name 눌러짐");
          Navigator.pushNamed(context, route);
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            children: [
              Icon(
                icon,
                color: id == selectedId ? Colors.redAccent : Colors.grey,
                // color: Colors.grey,
              ),
              Text(
                name,
                style: TextStyle(
                  color: id == selectedId ? Colors.redAccent : Colors.grey,
                  // color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
