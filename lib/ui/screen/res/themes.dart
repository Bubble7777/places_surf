import 'package:flutter/material.dart';
import 'package:places/ui/screen/res/colors.dart';
import 'package:places/ui/screen/res/text_style.dart';

final lightTheme = ThemeData(
  backgroundColor: lmPrimaryColorBackgound,
  primaryColor: lmPrimaryColor,
  scaffoldBackgroundColor: lmPrimaryColor,
  accentColor: lmPrimaryColor,
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: lmPrimaryColor,
    brightness: Brightness.light,
    titleTextStyle: largeTitle.copyWith(color: lmPrimaryColorDark),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: lmPrimaryColor,
    unselectedLabelColor: dmPrimaryColorGrey,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(
        40.0,
      ),
      color: lmPrimaryColorDark,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: lmPrimaryColorGreen,
  )),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: lmPrimaryColor,
    selectedItemColor: Colors.white,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: lmPrimaryColorBlue,
  ),
  dividerTheme: DividerThemeData(color: lmPrimaryColorGrey),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: lmPrimaryColorBlue,
    backgroundColor: lmPrimaryColor,
  ),
  primaryTextTheme: TextTheme(
    button: buttonSmallSubtitle,
    headline4: largeTitle.copyWith(
      color: lmPrimaryColorDark,
    ),
    headline5: title.copyWith(
      color: lmPrimaryColorDark,
    ),
    subtitle1: textSubtitle.copyWith(
      color: lmPrimaryColorDark,
    ),
    subtitle2: smallBoldSubtitle.copyWith(
      color: lmPrimaryColorDark,
    ),
    bodyText1: smallSubtitle.copyWith(
      color: lmPrimaryColorDark,
    ),
    caption: superSmallSmallSubtitle.copyWith(
      color: dmPrimaryColorText,
    ),
    headline3: subtitle.copyWith(color: lmPrimaryColorBlue),
  ),
);

final darkTheme = ThemeData(
  backgroundColor: dmPrimaryColorBlack,
  scaffoldBackgroundColor: dmPrimaryColorDark,
  accentColor: dmPrimaryColorBlack,
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
    elevation: 0,
    backgroundColor: dmPrimaryColorDark,
    titleTextStyle: subtitle.copyWith(
      color: dmPrimaryColorText,
    ),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: dmPrimaryColorBlue,
    unselectedLabelColor: dmPrimaryColorGrey,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(
        40.0,
      ),
      color: dmPrimaryColor,
    ),
  ),
  primaryColorLight: dmPrimaryColorBlue,
  // primaryColor: dmPrimaryColorDark,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: dmPrimaryColorGreen,
  )),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: dmPrimaryColor,
    backgroundColor: dmPrimaryColorDark,
  ),
  dividerTheme: DividerThemeData(color: dmPrimaryColorGrey),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: dmPrimaryColorDark,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: dmPrimaryColor,
    selectedIconTheme: IconThemeData(color: Colors.white),
    unselectedIconTheme: IconThemeData(color: Colors.white),
  ),
  primaryTextTheme: TextTheme(
    headline3: subtitle.copyWith(color: dmPrimaryColor),
    headline4: largeTitle.copyWith(
      color: dmPrimaryColorText,
    ),
    headline5: title.copyWith(
      color: dmPrimaryColorText,
    ),
    subtitle1: textSubtitle.copyWith(
      color: dmPrimaryColorText,
    ),
    subtitle2: smallBoldSubtitle.copyWith(
      color: dmPrimaryColorText,
    ),
    bodyText1: smallSubtitle.copyWith(
      color: dmPrimaryColor,
    ),
    caption: superSmallSmallSubtitle.copyWith(
      color: dmPrimaryColorText,
    ),
  ),
);
