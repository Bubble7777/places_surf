import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/sight_bottomNavBar.dart';
import 'package:places/ui/screen/sight_card.dart';

class VisitingScreen extends StatefulWidget {
  VisitingScreen({Key key}) : super(key: key);

  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Избранное',
            style: Theme.of(context).primaryTextTheme.headline3,
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(56.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Theme.of(context).accentColor),
              child: TabBar(
                  labelStyle: Theme.of(context).primaryTextTheme.subtitle2,
                  labelPadding: EdgeInsets.symmetric(horizontal: 16),
                  isScrollable: true,
                  //  labelColor: Colors.white,
                  //unselectedLabelColor: Color(0xFF7C7E92),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      child: Container(
                        width: 164,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text('Хочу посетить'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 164,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text('Посетил'),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
          child: TabBarView(
            children: [
              Column(
                children: [
                  SightCard(
                    sight: Sight(
                      name: 'Эйфелева башня',
                      details: 'Запланировано на 12 окт. 2020',
                      type: 'Башня',
                      url:
                          'https://img.fonwall.ru/o/5d/eiffel-tower-paris-france-eyfeleva-bashnya-jhqn.jpg',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SightCard(
                    sight: Sight(
                      name: 'Эйфелева башня',
                      details: 'Запланировано на 12 окт. 2020',
                      type: 'Башня',
                      url:
                          'https://img.fonwall.ru/o/5d/eiffel-tower-paris-france-eyfeleva-bashnya-jhqn.jpg',
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
