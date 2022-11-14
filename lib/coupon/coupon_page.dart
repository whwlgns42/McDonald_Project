import 'package:flutter/material.dart';

import '../nav.dart';
import 'components/coupon_buttons.dart';
import 'components/coupon_header.dart';
import 'components/coupon_reword_item.dart';

class CouponPage extends StatelessWidget {
  const CouponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 15),
            CouponHeader(),
            SizedBox(height: 15),
            CouponButtons(),
            CouponRewordItem(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNav(),
    );
  }
}
