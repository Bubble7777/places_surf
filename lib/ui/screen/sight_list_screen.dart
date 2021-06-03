import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  SightListScreen({Key key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 112,
        backgroundColor: Colors.white,
        elevation: 0,
        title:
            // Text(
            //   'Список \nинтересных мест',
            //   style: TextStyle(
            //       height: 1.12,
            //       color: Colors.black,
            //       fontSize: 32,
            //       fontStyle: FontStyle.normal,
            //       fontWeight: FontWeight.bold,
            //       fontFamily: 'Roboto-Regular'),
            // )
            RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
              text: 'C',
              style: TextStyle(
                  height: 1.12,
                  color: Colors.green,
                  fontSize: 32,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto-Regular'),
              children: <TextSpan>[
                TextSpan(
                  text: 'писок',
                  style: TextStyle(
                      height: 1.12,
                      color: Colors.black,
                      fontSize: 32,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto-Regular'),
                ),
                TextSpan(
                  text: '\nи',
                  style: TextStyle(
                      height: 1.12,
                      color: Colors.yellow,
                      fontSize: 32,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto-Regular'),
                ),
                TextSpan(
                  text: 'нтересных мест',
                  style: TextStyle(
                      height: 1.12,
                      color: Colors.black,
                      fontSize: 32,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto-Regular'),
                ),
              ]),
        ),
      ),
      body: Center(
        child: Text("Hello!"),
      ),
    );
  }
}
