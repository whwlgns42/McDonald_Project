import 'package:flutter/material.dart';

class CouponUseableItem extends StatefulWidget {
  const CouponUseableItem({Key? key}) : super(key: key);

  @override
  State<CouponUseableItem> createState() => _CouponUseableItemState();
}

class _CouponUseableItemState extends State<CouponUseableItem> {
  int selectedId = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Text("더 많은 혜택을 준비 중입니다!"),
    );
  }


} // end of _ class
