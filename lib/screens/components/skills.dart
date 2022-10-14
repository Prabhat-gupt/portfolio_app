import 'package:flutter/material.dart';

import '../../constants.dart';
import 'AnimatedCircularPI.dart';

class Skill extends StatelessWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding:
          const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCPI(
                percentage: 0.8,
                lable: "Flutter",
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCPI(
                percentage: 0.85,
                lable: "ReactJs",
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCPI(
                percentage: 0.65,
                lable: "Firebase",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
