import 'package:flutter/material.dart';

class AdminRequest extends StatelessWidget {
  final String courseId;
  final passKey;
  AdminRequest({
    @required this.courseId,
    @required this.passKey,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig()..init(context);
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset('images/GuruLeaf_Retry 2.png'),
        SizedBox(height: SizeConfig.screenHeight * 0.015625 * 2.3),
        Text(
          'Please ask your sub-admin to create time-table for this course first.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.045,
            fontWeight: FontWeight.w400,
            color: Color(0xff1c1c1c),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.015625 * 3),
        MaterialButton(
          onPressed: () {},
          minWidth: SizeConfig.screenWidth * 160 / 360,
          height: SizeConfig.screenHeight * 0.046875,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(SizeConfig.screenWidth * 0.01389),
          ),
          color: gc,
          elevation: 5,
          child: Text(
            "Request Sub-Admin",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: SizeConfig.screenWidth * 0.039,
            ),
          ),
        ),
      ]),
    );
  }
}
