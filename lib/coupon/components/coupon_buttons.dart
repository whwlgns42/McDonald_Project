import 'package:flutter/material.dart';

import 'coupon_reword_item.dart';
import 'coupon_useable_item.dart';

class CouponButtons extends StatefulWidget {
  const CouponButtons({Key? key}) : super(key: key);

  @override
  State<CouponButtons> createState() => _CouponButtonsState();
}

class _CouponButtonsState extends State<CouponButtons> {
  int selectedId = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCouponButton(0, "리워드 쿠폰"),
          _buildCouponButton(1, "사용 가능한 쿠폰"),
          _buildCouponButton(2, "단품"),
          _buildCouponButton(3, "세트"),
          _buildCouponButton(4, "팩"),
          _buildCouponButton(5, "사이드 & 디저트"),
          _buildCouponButton(6, "맥카페 & 음료"),
          _buildCouponButton(7, "맥모닝"),
        ],
      ),
    );
  }

  Widget _buildCouponButton(int id, String buttonName) {
    return InkWell(
      onTap: () {
        print("$buttonName 버튼 눌러짐");
        setState(() {
          selectedId = id;
        });

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: id == selectedId ? Colors.amber : Colors.white,
            border: id != selectedId
                ? Border.all()
                : Border.all(color: Colors.amber),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            '$buttonName',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
