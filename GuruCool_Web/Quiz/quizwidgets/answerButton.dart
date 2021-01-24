import 'package:flutter/material.dart';
import '../SizeConfig.dart';

class AnswerButton extends StatelessWidget {
  final double leftmargin;
  final double rightmargin;
  final double topmargin;
  final String text;
  final Color buttonColor;
  final Color textColor;
  AnswerButton({
    @required this.text,
    @required this.buttonColor,
    @required this.textColor,
    @required this.leftmargin,
    @required this.rightmargin,
    @required this.topmargin,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: [
        Expanded(
          child: Container(
            height: SizeConfig.screenHeight * 40 / 900,
            margin: EdgeInsets.only(
                left: leftmargin, right: rightmargin, top: topmargin),
            //bottom: SizeConfig.screenWidth * 0.012),
            child: RaisedButton(
              onPressed: () {
//TODO : Responsiveness
              },
              color: buttonColor,
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
                side: BorderSide(color: Color(0xff305275), width: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
