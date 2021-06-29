import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/res/colors.dart';
import 'package:places/ui/screen/sight_bottomNavBar.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/res/text_style.dart';

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
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(46),
          child: Container(
            padding: EdgeInsets.only(
              right: 64,
            ),
            child: Text(
              'Список \nинтересных мест',
              style: Theme.of(context).primaryTextTheme.headline4,
            ),
          ),
        ),
      ),
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
      bottomNavigationBar: BottomNavBar(),
    );
  }

  SightCard getList(int index) {
    return new SightCard(
      sight: mocks[index],
    );
  }
}
