import 'package:flutter/material.dart';

import '../SizeConfig.dart';

class ReviewOptions extends StatelessWidget {
  final String text;
  final Icon icon;

  ReviewOptions({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.screenHeight * 20 / 900),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          SizedBox(width: SizeConfig.screenWidth * 10 / 1440),
          Container(
            child: Text(
              text,
              style: TextStyle(
                fontSize: SizeConfig.screenHeight * 16 / 900,
                fontWeight: FontWeight.w400,
                color: Color(0xff305275),
              ),
            ),
          )
        ],
      ),
    );
  }
}
