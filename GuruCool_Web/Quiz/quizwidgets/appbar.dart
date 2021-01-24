import 'package:flutter/material.dart';
import '../SizeConfig.dart';
import 'package:the_basics/students/quizconstants.dart';

class TitleAppBarr extends StatelessWidget {
  final String instituteName;
  final String studentName;
  TitleAppBarr({
    @required this.instituteName,
    @required this.studentName,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 60 / 900 * SizeConfig.screenHeight,
      leading: Container(
        height: SizeConfig.screenHeight * 60 / 900,
        width: SizeConfig.screenWidth * 60 / 100,
        color: Color(0xff2E3842),
        child: CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.school),
        ),
      ),
      title: Text(
        this.instituteName,
        style: TextStyle(
          color: colorOrangePrimary,
        ),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: colorOrangePrimary,
              ),
              onPressed: () {},
            ),
            Text(
              this.studentName,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            CircleAvatar(
              backgroundColor: Color(0xffA6CAED),
              radius: 45 / 900 * SizeConfig.screenHeight,
              child: Text(
                this.studentName.substring(0, 1),
                style: TextStyle(color: Colors.black),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_drop_down_outlined,
                color: Color(0xff848484),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
