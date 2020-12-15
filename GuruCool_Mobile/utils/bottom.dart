import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SizeConfig {
MediaQueryData _mediaQueryData;
static double screenWidth;
static double screenHeight;
static double _safeAreaHorizontal;
static double _safeAreaVertical;
static double b;
static double v;

void init(BuildContext context) {
_mediaQueryData = MediaQuery.of(context);
screenHeight = _mediaQueryData.size.height;
screenWidth = _mediaQueryData.size.width;
_safeAreaHorizontal =_mediaQueryData.padding.left + _mediaQueryData.padding.right;
_safeAreaVertical =_mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
b = (screenWidth - _safeAreaHorizontal) / 100;
v = (screenHeight - _safeAreaVertical) / 100;
}
}

class Bottom extends StatelessWidget {
@override
Widget build(BuildContext context) {
SizeConfig().init(context);
return BottomNavigationBar(
elevation: 5,  
selectedFontSize: SizeConfig.b * 1.75,
unselectedFontSize: SizeConfig.b * 1.75,
selectedItemColor: Color(0xffF36C24),
iconSize: SizeConfig.b * 7,
unselectedItemColor: Color(0xff999999),
type: BottomNavigationBarType.fixed,
items: const <BottomNavigationBarItem>[
BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
BottomNavigationBarItem(
icon: Icon(Icons.view_week_rounded), label: 'COURSES'),
BottomNavigationBarItem(
icon: Icon(MdiIcons.viewGrid), label: 'MODULES'),
BottomNavigationBarItem(
icon: Icon(Icons.account_balance), label: 'MY INSTITUTE'),
BottomNavigationBarItem(
icon: Icon(Icons.account_box), label: 'PROFILE'),
]);
}
}