import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({Key? key,required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/checksvg.svg",height: 15,width: 15,),
          SizedBox(width: defaultPadding/2,),
          Text(text),
        ],
      ),
    );
  }
}
