import 'package:flutter/material.dart';
//import 'package:the_basics/admin/quizConstants.dart';
import '../SizeConfig.dart';
import 'package:the_basics/students/quizConstants.dart';

class Bullets extends StatelessWidget {
  final String text;
  final String type;
  Bullets({@required this.text, @required this.type});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth * 0.3056,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.screenHeight * 0.01,
      ),
      child: Row(
        children: [
          Icon(
            Icons.fiber_manual_record,
            color: colorBlueText,
            size: SizeConfig.screenWidth * 0.01167,
          ),
          SizedBox(width: SizeConfig.screenWidth * 10 / 1440),
          Container(
            child: Text(
              text,
              style: TextStyle(
                fontSize: SizeConfig.screenHeight * 24 / 900,
                fontWeight: FontWeight.w700,
                color: colorOrangePrimary,
              ),
            ),
          ),
          SizedBox(width: SizeConfig.screenWidth * 5 / 1440),
          Container(
            child: Text(
              type,
              style: TextStyle(
                fontSize: SizeConfig.screenHeight * 24 / 900,
                fontWeight: FontWeight.w700,
                color: colorBlueText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
