import 'package:flutter/material.dart';

class FindStoreMapBtn extends StatefulWidget {
  const FindStoreMapBtn({Key? key}) : super(key: key);

  @override
  State<FindStoreMapBtn> createState() => _FindStoreMapBtnState();
}

class _FindStoreMapBtnState extends State<FindStoreMapBtn> {
  int selectedId = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStoreFindBtn(0, "지역별"),
          _buildStoreFindBtn(1, "이벤트매장"),
        ],
      ),
    );
  }

  Widget _buildStoreFindBtn(int id, String title){
    return Column(
      children: [
        InkWell(
          onTap: (){
            print("버튼 클릭");
            setState(() {
              selectedId = id;
            });
          },
          child: Text(title, style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold,
            color: id == selectedId ? Colors.orange : Colors.grey,
            decoration: id == selectedId ? TextDecoration.underline : TextDecoration.none,
          ),),
        )
      ],
    );
  }

}



