import 'package:flutter/material.dart';
import 'package:qwe/utils/Colors.dart';
import 'package:qwe/utils/bottom.dart';


class EmptyCourses extends StatelessWidget {
  final String courseId;
  final passKey;
  final String schoolName;
  final String imgCollegeUrl;
  EmptyCourses({
    @required this.courseId,
    @required this.passKey,
    @required this.schoolName,
    @required this.imgCollegeUrl,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: gc,
            ),
            onPressed: () {}),
        title: Transform(
          transform:
              Matrix4.translationValues(-SizeConfig.screenWidth * 0.06, 0, 0),
          child: Text(
            this.schoolName,
            style: TextStyle(
              color: gc,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.screenWidth * 0.045,
            ),
          ),
        ),
        actions: [
          Row(children: [
            IconButton(
                icon: Icon(Icons.notifications_none, color: gc),
                onPressed: () {}),
            CircleAvatar(
                backgroundColor: Color(0xffA4A4A4),
//backgroundImage: (),
                radius:
                    SizeConfig.screenWidth * 0.0862 / 2), //to pass the imageUrl
            SizedBox(
              width: SizeConfig.screenWidth * 0.025,
            )
          ]),
        ],
      ),
      bottomNavigationBar: Bottom(),
      body: Container(
        color: Color(0xffE5E5E5),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.171875),
            Image.asset('images/leaf.png'),
            SizedBox(height: SizeConfig.screenHeight * 0.036),
            Center(
              child: Text(
                "No Courses Found !",
                style: TextStyle(
                  color: gc,
                  fontSize: SizeConfig.screenWidth * 0.033,
                ),
              ),
            ),
            Spacer(),
            Center(
              child: MaterialButton(
                onPressed: () {},
                minWidth: SizeConfig.screenWidth * 0.44,
                height: SizeConfig.screenHeight * 0.046875,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    SizeConfig.screenWidth * 0.01389,
                  ),
                ),
                color: gc,
                elevation: 4,
                child: Text(
                  'Create a course',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: SizeConfig.screenWidth * 0.039,
                  ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.068),
          ],
        ),
      ),
    );
  }
}
