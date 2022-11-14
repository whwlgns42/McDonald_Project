import 'package:flutter/material.dart';

class FindStoreTextForm extends StatelessWidget {
  const FindStoreTextForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(240, 240, 240, 1.0),
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: [
          SizedBox(height: 50,),
          Stack(children: [
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: "매장명, 동명, 도로명을 검색해 주세요.",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Positioned(
                right: 0,
              child: CircleAvatar(
                radius: 31,
                backgroundColor: Colors.amber,
                child: IconButton(
                  icon: Icon(Icons.search, size: 35),
                  color: Colors.black,
                  onPressed: () {
                    print("검색버튼이 눌러졌습니다.");
                  },
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
