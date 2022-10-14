import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/screens/components/AnimatedCircularPI.dart';
import 'package:portfolio_app/screens/components/KnowledgeText.dart';
import 'package:portfolio_app/screens/components/areaInfoText.dart';
import 'package:portfolio_app/screens/components/coding.dart';
import 'package:portfolio_app/screens/components/my_info.dart';
import 'package:portfolio_app/screens/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Residence",
                    text: "Gwalior",
                  ),
                  AreaInfoText(
                    title: "City",
                    text: "Gwalior",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "19",
                  ),
                  Skill(),
                  SizedBox(height: defaultPadding/2,),
                  Coding(),
                  Column(
                    children: [
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                        child: Text(
                          "Knowledges",
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                      KnowledgeText(text: "Flutter, Dart"),
                      KnowledgeText(text: "Firebase"),
                      // KnowledgeText(text: "Gulp, Webpack, Grunt"),
                      KnowledgeText(text: "GIT Knowledge"),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: defaultPadding,),
                  TextButton(
                      onPressed: (){},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                  color: Theme.of(context).textTheme.bodyText1!.color
                              ),
                            ),
                            SizedBox(width: defaultPadding,),
                            Icon(
                              Icons.download,
                              color: Colors.grey,
                            ),

                          ],
                        ),
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding/2),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(onPressed: (){},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg",color: Colors.white,
                            ),
                        ),
                        IconButton(onPressed: (){},
                          icon: SvgPicture.asset("assets/icons/git2.svg",
                          ),
                        ),
                        IconButton(onPressed: (){},
                          icon: SvgPicture.asset("assets/icons/twitter.svg",color: Colors.white,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
