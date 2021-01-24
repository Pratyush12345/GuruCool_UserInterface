import 'package:flutter/material.dart';
import '../SizeConfig.dart';
import 'package:the_basics/students/quizConstants.dart';

class QuizButtons extends StatelessWidget {
  final String text;
  final Function onPressed;
  QuizButtons({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: SizeConfig.screenWidth * 150 / 1440,
          height: SizeConfig.screenHeight * 40 / 900,
          child: RaisedButton(
            elevation: 5,
            onPressed: onPressed,
            color: colorOrangePrimary,
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.screenHeight * 18 / 900),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}
