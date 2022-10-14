import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/models/Project.dart';
import 'package:portfolio_app/models/Recommendation.dart';
import 'package:portfolio_app/responsive.dart';
import 'package:portfolio_app/screens/home/animated_counter.dart';
import 'package:portfolio_app/screens/home/home_banner.dart';
import 'package:portfolio_app/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Responsive.isMobileLarge(context)?
          Column(
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                // HomeLight(
                //   counter: AnimatedCounter(
                //     value: 119,
                //     text: "k+",
                //   ),
                //   label: "Subscribers",
                // ),
                // HomeLight(
                //   counter: AnimatedCounter(
                //     value: 40,
                //     text: "+",
                //   ),
                //   label: "Videos",
                // ),
              ],
            ),
              const SizedBox(height: defaultPadding,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // HomeLight(
                  //   counter: AnimatedCounter(
                  //     value: 30,
                  //     text: "+",
                  //   ),
                  //   label: "GitHub Project",
                  // ),
                  // HomeLight(
                  //   counter: AnimatedCounter(
                  //     value: 13,
                  //     text: "k+",
                  //   ),
                  //   label: "Stars",
                  // ),
                ],
              )
          ],
          ) :Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // HomeLight(
              //   counter: AnimatedCounter(
              //     value: 119,
              //     // text: "k+",
              //   ),
              //   label: "SGPA",
              // ),
              // HomeLight(
              //   counter: AnimatedCounter(
              //     value: 40,
              //     // text: "+",
              //   ),
              //   label: "CGPA",
              // ),
              // HomeLight(
              //   counter: AnimatedCounter(
              //     value: 88,
              //   ),
              //   label: "12 Grade",
              // ),
              // HomeLight(
              //   counter: AnimatedCounter(
              //     value: 13,
              //   ),
              //   label: "GitHub Project",
              // ),
            ],
          ),
        ), // HomeLight
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Project",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Responsive(
                mobile: ProjectGridView(crossAxisCount: 1,childAspectRatio: 1.7,),
                mobileLarge: ProjectGridView(crossAxisCount: 2,),
                tablet: ProjectGridView(childAspectRatio: 1.1,),
                destop: ProjectGridView()),
          ],
        ), // MyProject

        // Recommendation(),
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({Key? key, this.crossAxisCount = 3 ,  this.childAspectRatio = 1.3}) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}





class HomeLight extends StatelessWidget {
  const HomeLight({Key? key, required this.counter, this.label})
      : super(key: key);
  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // To create text animated
        counter,
        SizedBox(width: defaultPadding / 2),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.project}) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context)? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "Read More >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}

class Recommendation extends StatelessWidget {
  const Recommendation({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendation.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({Key? key, }) : super(key: key);
  // final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            demo_recommendation[0].name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(demo_recommendation[0].source!),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            demo_recommendation[0].text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}

