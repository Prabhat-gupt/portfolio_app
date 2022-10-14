import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/responsive.dart';

import '../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context)? 2.5: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/flutter.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: dartColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Responsive.isDesktop(context)?
                  Theme.of(context).textTheme.headline3!
                      .copyWith(fontWeight: FontWeight.bold,
                      color: Colors.white,fontSize: 40
                  ):Theme.of(context).textTheme.headline5!
                      .copyWith(fontWeight: FontWeight.bold,
                      color: Colors.white,fontSize: 20
                  )
                ),
                if(Responsive.isMobileLarge(context))SizedBox(height: defaultPadding,),
                DefaultTextStyle(
                  // it applies same style to all the widgets under it
                  style: Theme.of(context).textTheme.subtitle1!,
                  maxLines: 1,
                  child: Row(
                    children: [
                     if(!Responsive.isMobileLarge(context)) Text.rich(
                          TextSpan(
                              text: "<",
                              children: [
                                TextSpan(
                                  text: "flutter",
                                  style: TextStyle(color: primaryColor),
                                ),
                                TextSpan(text: ">"),
                              ]
                          )
                      ),
                      if(!Responsive.isMobileLarge(context)) SizedBox(width: defaultPadding/2,),
                      Text("I build "),
                      Responsive.isMobile(context)?Expanded(child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText("responsive web and mobile app.",speed: Duration(milliseconds: 60),),
                          TyperAnimatedText("complete food delivery app." ,speed: Duration(milliseconds: 60),),
                          TyperAnimatedText("website for alumni", speed: Duration(milliseconds: 60),),
                        ],
                      ),): AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText("responsive web and mobile app.",speed: Duration(milliseconds: 60),),
                          TyperAnimatedText("complete e-Commerce app UI." ,speed: Duration(milliseconds: 60),),
                          TyperAnimatedText("Chat app with dark and light theme", speed: Duration(milliseconds: 60),),
                        ],
                      ),
                      if(!Responsive.isMobileLarge(context)) SizedBox(width: defaultPadding/2,),
                      if(!Responsive.isMobileLarge(context)) Text.rich(
                        TextSpan(
                            text: "<",
                            children: [
                              TextSpan(
                                text: "flutter",
                                style: TextStyle(color: primaryColor),
                              ),
                              TextSpan(text: ">"),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: defaultPadding,),

                if(!Responsive.isMobileLarge(context)) ElevatedButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2,
                      vertical: defaultPadding,
                    ),
                    backgroundColor: primaryColor,
                  ),
                  child: Text(
                    "EXPLORE NOW",
                    style: TextStyle(color: dartColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
