import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          toolbarHeight: 112,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Список \nинтересных мест',
            style: TextStyle(
                height: 1.12,
                color: Colors.black,
                fontSize: 32,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto-Regular'),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              getList(0),
              getList(1),
              getList(2),
              getList(0),
            ],
          ),
        ),
      ),
    );
  }

  SightCard getList(int index) {
    return new SightCard(
      sight: mocks[index],
    );
  }
}
