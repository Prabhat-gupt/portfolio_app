import 'package:flutter/material.dart';

import '../../constants.dart';

class AnimatedLPI extends StatelessWidget {
  const AnimatedLPI({Key? key, required this.percenage, required this.label}) : super(key: key);
  final double percenage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2 ),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0,end: percenage),
        duration: defaultDuration,
        builder: (context,double value,child)=>Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
                Text((value*100).toInt().toString() + "%"),
              ],
            ),
            SizedBox(height: defaultPadding/2,),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: dartColor,
            ),
          ],
        ),
      ),
    );
  }
}
