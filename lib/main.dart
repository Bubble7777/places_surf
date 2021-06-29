import 'package:flutter/material.dart';

import 'package:places/ui/screen/res/themes.dart';
import 'package:places/ui/screen/sight_Details.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      // darkTheme,
      home: //SightDetails(),
          // SightListScreen(),
          VisitingScreen(),
    );
  }
}
