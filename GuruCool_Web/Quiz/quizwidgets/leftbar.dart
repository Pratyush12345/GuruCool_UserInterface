import 'package:flutter/material.dart';
import '../SizeConfig.dart';
//import 'package:the_basics/students/quizconstants.dart';

class LeftBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth * 60 / 1440,
        color: Color(0xff2E3842),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 14 / 900),
            SizedBox(
              height: SizeConfig.screenHeight * 50 / 900,
            ),
            IconButton(
              icon: Icon(
                Icons.format_list_bulleted,
                color: Colors.white,
                size: SizeConfig.screenHeight * 30.0 / 900,
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 40 / 900,
            ),
            IconButton(
              icon: Icon(
                Icons.format_list_bulleted,
                color: Colors.white,
                size: SizeConfig.screenHeight * 30.0 / 900,
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 40 / 900,
            ),
            IconButton(
              icon: Icon(
                Icons.format_list_bulleted,
                color: Colors.white,
                size: SizeConfig.screenHeight * 30.0 / 900,
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 40 / 900,
            ),
            IconButton(
              icon: Icon(
                Icons.format_list_bulleted,
                color: Colors.white,
                size: SizeConfig.screenHeight * 30.0 / 900,
              ),
              onPressed: () {},
            ),
          ],
        ));
  }
}
