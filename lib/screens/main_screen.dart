import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/responsive.dart';
import 'package:portfolio_app/screens/components/side_menu.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({Key?key, required this.children}) : super(key:key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: Responsive.isDesktop(context)?null: AppBar(
        backgroundColor: bgColor,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu)),)
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth,maxHeight: 730),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Now each take 50%
              if(Responsive.isDesktop(context))
                Expanded(
                  // Now this take 75%
                  // Now this take (2+7= = 9) so 2/9=0.22 means 22%
                  flex: 2,
                    child: SideMenu(),
                ),
              SizedBox(width: defaultPadding,),
              Expanded(
                // it takes 7/9 means 78% width
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                        ...children,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}