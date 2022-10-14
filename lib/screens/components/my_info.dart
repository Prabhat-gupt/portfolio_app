import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF3F51B5),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/prabhatgupta.png"),
            ),
            Spacer(),
            Text(
              "Prabhat Gupta",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Flutter Developer & FontEnd Developer React JS",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                  fontWeight: FontWeight.w400,
                  height: 1.5
              ),
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
