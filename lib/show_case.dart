import 'package:flutter/material.dart';
import 'package:showcase_tutorial/showcase_tutorial.dart';

class ShowCase extends StatelessWidget {
   ShowCase({super.key, required this.globalKey, required this.title, required this.description, required this.child ,   this.shapeBorder = const CircleBorder()});
   final GlobalKey globalKey ; 
   final String title ;
   final String description ;
   final ShapeBorder shapeBorder ; 
   final Widget child ; 

  @override
  Widget build(BuildContext context) {
    return Showcase(
      key: globalKey, 
      title: title,
      description: description,
      targetShapeBorder: shapeBorder,
       child: child

    );
  }
}