import 'package:qwe/utils/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:qwe/utils/Colors.dart';



class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BottomNavigationBar(
        elevation: 5,
        selectedFontSize: SizeConfig.screenWidth * 0.0194,
        unselectedFontSize:SizeConfig.screenWidth * 0.0194,
        selectedItemColor: gc,
        iconSize: SizeConfig.screenWidth*0.05,
        unselectedItemColor: Color(0xff999999),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('HOME') /*label: 'Home'*/
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_week),
              title: Text('COURSES') /*label: 'COURSES'*/
              ),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.viewGrid),
              title: Text('MODULES') /* label: 'MODULES'*/
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              title: Text('MY INSTITUTE') /*label: 'MY INSTITUTE'*/
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text('PROFILE') /*label: 'PROFILE'*/
              ),
        ]
        );
  }
}
