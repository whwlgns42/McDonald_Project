import 'package:flutter/material.dart';

class FindStoreMap extends StatelessWidget {
  const FindStoreMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(
          children: [
            Image.asset("assets/find_store_images/map.png",
            width: double.infinity,
            height: 400,
            fit: BoxFit.fitWidth,),
            Positioned(
              top: 20,
              right: 20,
              child: CircleAvatar(

                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.blueAccent,
                  ),
                  onPressed: (){
                    print("더하기 버튼 클릭");
                  },
                ),
              ),
            ),
            Positioned(
              top: 70,
              right: 20,
              child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: IconButton(
                  icon: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  onPressed: (){
                    print("마이너스 버튼 클릭");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
