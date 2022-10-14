import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/screens/components/AnimatedLinearPI.dart';

class Coding extends StatelessWidget {
  const Coding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLPI(percenage: 0.8,label: "Java",),
        AnimatedLPI(percenage: 0.75,label: "C++",),
        AnimatedLPI(percenage: 0.8,label: "Data Structures",),
        AnimatedLPI(percenage: 0.6,label: "Dart",),

      ],
    );
  }
}
