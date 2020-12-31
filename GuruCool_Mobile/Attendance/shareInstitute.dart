import 'package:flutter/material.dart';

class ShareInstitute extends StatelessWidget {
  final passKey;
  final String subjectName;
  final String classNumber;
  ShareInstitute({
    @required this.passKey,
    @required this.subjectName,
    @required this.classNumber,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig()..init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: gc,
            ),
            onPressed: () {}),
        title: Transform(
          transform:
              Matrix4.translationValues(-SizeConfig.screenWidth * 0.06, 0, 0),
          child: Text(
            this.classNumber,
            style: TextStyle(
              color: gc,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.screenWidth * 0.05,
            ),
          ),
        ),
      ),
      backgroundColor: bgColor,
      body: Column(children: [
        SizedBox(height: SizeConfig.screenHeight * 0.015625 * 9.1),
        Text(
          'Currently no students is enrolled for course “course name”',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.045,
            fontWeight: FontWeight.w400,
            color: Color(0xff1c1c1c),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.015625 * 2.4),
        Image.asset('images/GuruLeaf_Retry 2.png'),
        SizedBox(height: SizeConfig.screenHeight * 0.015625 * 2.3),
        Text(
          'Share your institute code for student to join',
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
            "Share",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: SizeConfig.screenWidth * 0.039,
            ),
          ),
        ),
      ]),
    );
  }
}
