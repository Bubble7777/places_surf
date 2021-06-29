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
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            //  color: Color(0xFF21222C).withOpacity(0.56),
            width: 0.8,
          ),
        ),
      ),
      child: BottomNavigationBar(
        iconSize: 24.0,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/list.svg',
            ),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/map.svg',
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/heart_Full.svg',
            ),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/settings.svg',
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
