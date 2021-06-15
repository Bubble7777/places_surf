import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Color(0xFFf5f5f5),
      iconSize: 24.0,
      currentIndex: 2,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'res/assets/icons/list.svg',
          ),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'res/assets/icons/map.svg',
          ),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'res/assets/icons/heart_Full.svg',
          ),
          label: 'Heart',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'res/assets/icons/settings.svg',
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
