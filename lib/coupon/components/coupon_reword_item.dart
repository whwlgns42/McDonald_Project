import 'package:flutter/material.dart';

class CouponRewordItem extends StatefulWidget {
  const CouponRewordItem({Key? key}) : super(key: key);

  @override
  State<CouponRewordItem> createState() => _CouponRewordItemState();
}

class _CouponRewordItemState extends State<CouponRewordItem> {
  int selectedId = 0;

  List<String> selectedPic = [
    'a1',
    'a2',
    'a3',
    'a4',
    'a5',
    'a6',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 300,
      child: SizedBox(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 280),
          children: [
            _buildCouponItem(0, "2500 포인트", "불고기 버거", '06:00 ~ 02:00'),
            _buildCouponItem(1, "1500 포인트", "맥너겟 4조각", '10:30 ~ 04:00'),
            _buildCouponItem(2, "1500 포인트", "후렌치 후라이 M", '10:30 ~ 04:00'),
            _buildCouponItem(3, "1500 포인트", "아메리카노", " "),
            _buildCouponItem(4, "2500 포인트", "탄산음료 L", " "),
            _buildCouponItem(5, "2500 포인트", "아이스크림", '06:00 ~ 02:00'),
          ],
        ),
      ),
    );
  }

  Widget _buildCouponItem(int id, String point, String name, String time) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: double.infinity,
            height: 270,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white24),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset(
                      width: 120,
                      height: 100,
                      'assets/coupon_images/${selectedPic[id]}.png',
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(point,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, left: 5),
                  width: 160,
                  height: 2,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0, left: 12),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: Icon(Icons.access_alarm),
                      ),
                      Text(
                        time,
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
} // end of _ class
