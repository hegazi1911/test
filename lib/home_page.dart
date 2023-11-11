import 'package:flutter/material.dart';
import 'package:showcase_tutorial/showcase_tutorial.dart';
import 'package:test/show_case.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey globalKeyOne = GlobalKey();
  final GlobalKey globalKeyTwo = GlobalKey();
  final GlobalKey globalKeyThree = GlobalKey();
  final GlobalKey globalKeyFour = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ShowCaseWidget.of(context).startShowCase([globalKeyOne, globalKeyTwo, globalKeyThree, globalKeyFour]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return ShowCaseWidget(
    //   builder: Builder(builder: (context) {
      return   Scaffold(
          appBar: AppBar(
            title: Text('text'),
            actions: [
              ShowCase(globalKey: globalKeyOne,
              title: 'user profile',
              description: 'go to your profile and edite',
              child: Icon(Icons.person)), 
              ShowCase(globalKey: globalKeyTwo,
              title: 'favorite',
              description: 'your facvorite apeer in this ',
              child: Icon(Icons.favorite))],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShowCase(globalKey: globalKeyThree,
                title: 'your profile',
                description: 'Your profile picture ',
                child: Icon(Icons.person,size: 
                50,)), 
                ShowCase(globalKey: globalKeyFour,
                title: ' user name',
                description: 'your user name ',
                child: Text('ahmed hegazi')) , 
              ],
            ),
          ),
        ) ;
      // }),
    
  }
}
