import 'package:flutter/material.dart';
//import 'package:the_basics/admin/quizConstants.dart';
import '../SizeConfig.dart';
//import 'package:the_basics/students/quizConstants.dart';

class GridText extends StatelessWidget {
  final String text;
  final String type;
  final double size;
  final FontWeight weight;
  final Color color;
  GridText(
      {@required this.text,
      @required this.type,
      @required this.size,
      @required this.weight,
      @required this.color});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text(
            text,
            style: TextStyle(
              fontSize: SizeConfig.screenHeight * size / 900,
              fontWeight: weight,
              color: color,
            ),
          ),
        ),
        //SizedBox(width: SizeConfig.screenWidth * 5 / 1440),
        Container(
          child: Text(
            type,
            style: TextStyle(
              fontSize: SizeConfig.screenHeight * size / 900,
              fontWeight: weight,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
