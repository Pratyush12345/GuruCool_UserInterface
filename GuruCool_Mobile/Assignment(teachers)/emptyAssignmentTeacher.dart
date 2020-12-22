import 'package:flutter/material.dart';

class EmptyAssignmentTeacher extends StatelessWidget {
  final String courseId;
  final passKey;
  final String titleName;
  final String imgCollegeUrl;

  EmptyAssignmentTeacher({
    @required this.courseId,
    @required this.passKey,
    @required this.titleName,
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
            this.titleName,
            style: TextStyle(
                color: gc,
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.screenWidth * 0.045),
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
            SizedBox(width: SizeConfig.screenWidth * 0.025),
          ])
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(
          Icons.add,
          size: SizeConfig.screenWidth * 0.0486 * 1.5,
          color: Colors.white,
        ),
        backgroundColor: gc,
      ),
      bottomNavigationBar: Bottom(),
      body: Container(
        color: Color(0xffE5E5E5),
        child: Column(children: [
          SizedBox(height: SizeConfig.screenHeight * 0.171875),
//Image.asset(''),
//to load Image here
          SizedBox(height: SizeConfig.screenHeight * 0.036),
          Center(
            child: Text(
              "No Assignments Available!",
              style: TextStyle(
                  color: gc, fontSize: SizeConfig.screenWidth * 0.0389),
            ),
          ),
          Spacer(),
          SizedBox(height: SizeConfig.screenHeight * 0.068),
        ]),
      ),
    );
  }
}
