import 'package:flutter/material.dart';

import '../../constants.dart';

class AnimatedCPI extends StatelessWidget {
  const AnimatedCPI({Key? key, required this.percentage, required this.lable}) : super(key: key);
final double percentage;
final String lable;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0,end: percentage),
              duration: defaultDuration,
              builder: (context,double value,child) =>
                  Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: value,
                          color: primaryColor,
                          backgroundColor: dartColor,
                        ),
                        Center(
                          child: Text(
                            (value*100).toInt().toString() + "%",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        )
                      ]
                  )
          ),
        ),
        SizedBox(height: defaultPadding/2,),
        Text(
          lable,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
