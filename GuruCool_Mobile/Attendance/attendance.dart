import 'package:flutter/material.dart';

class Attendance extends StatelessWidget {
  final String courseId;
  final passKey;
  final String titleName;
  final String subjectName;
  final String studentNumber;
  final String classNumber;
  Attendance({
    @required this.courseId,
    @required this.passKey,
    @required this.titleName,
    @required this.subjectName,
    @required this.studentNumber,
    @required this.classNumber,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig()..init(context);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
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
              fontSize: SizeConfig.screenWidth * 0.05,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Bottom(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//for classes builder
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(children: [
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenWidth * 0.0556,
                        vertical: SizeConfig.screenHeight * 0.0265625,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Class ${this.classNumber}',
                              style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.0389,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c),
                              ),
                            ),
                            SizedBox(
                                height:
                                    SizeConfig.screenHeight * 0.015625 * 1.1),
//for subjects builder
                            ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 7,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(children: [
                                    Container(
                                      height:
                                          SizeConfig.screenHeight * 40 / 640,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: SizeConfig.screenWidth *
                                              0.0278 *
                                              1.4,
                                          vertical: SizeConfig.screenHeight *
                                              0.015625),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            offset: Offset(
                                              0,
                                              SizeConfig.screenHeight * 0.00625,
                                            ),
                                            blurRadius:
                                                SizeConfig.screenWidth * 0.005,
                                          ),
                                        ],
                                        gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color(0xffF37029),
                                              Color(0xffF8A377),
                                            ]),
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.screenWidth * 0.01389),
                                      ),
                                      child: Row(children: [
                                        Text(
                                          this.subjectName,
                                          style: TextStyle(
                                            fontSize:
                                                SizeConfig.screenWidth * 0.0444,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Spacer(),
                                        CircleAvatar(
                                          backgroundColor: gc,
                                          radius:
                                              SizeConfig.screenWidth * 7 / 360,
                                          child: Icon(Icons.person,
                                              color: Colors.white,
                                              size: SizeConfig.screenWidth *
                                                  13 /
                                                  360),
                                        ),
                                        SizedBox(
                                            width: SizeConfig.screenWidth *
                                                0.02777778 *
                                                0.4),
                                        Text(
                                          this.studentNumber,
                                          style: TextStyle(
                                            fontSize:
                                                SizeConfig.screenWidth * 0.0389,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ]),
                                    ),
                                    SizedBox(
                                        height: SizeConfig.screenHeight *
                                            0.015625 *
                                            1.9),
                                  ]);
                                }),
                          ]),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.015625 * 0.8),
                  ]),
                );
              }),
        ]),
      ),
    );
  }
}
