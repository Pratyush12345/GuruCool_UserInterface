import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qwe/utils/Colors.dart';
import 'package:qwe/utils/bottom.dart';
import 'package:qwe/ChapterContent/speedDialStf.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ChapterContentStudent extends StatelessWidget {
  final String courseId;
  final String contentType;
  final String time;
  final String date;
  final passKey;
  final String subjectName;
  final String imgCollegeUrl;
  ChapterContentStudent({
    @required this.courseId,
    @required this.time,
    @required this.date,
    @required this.passKey,
    @required this.contentType,
    @required this.subjectName,
    @required this.imgCollegeUrl,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
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
            this.subjectName,
            style: TextStyle(
              color: gc,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.screenWidth * 0.05,
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
            ),
          ]),
        ],
      ),
      bottomNavigationBar: Bottom(),
      floatingActionButton: Dial(),
      body: Container(
        color: bgColor,
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02734375),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Card(
                      margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenWidth * 0.04167,
                        vertical: SizeConfig.screenHeight * 0.0140625 / 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.screenWidth * 0.01389,
                        ),
                      ),
                      elevation: 5,
                      child: Container(
                        height: SizeConfig.screenHeight * 0.078125,
                        width: SizeConfig.screenWidth * 0.9167,
                        child: Row(
                          children: [
                            Container(
                              height: SizeConfig.screenHeight * 0.078125,
                              width: SizeConfig.screenWidth * 0.1389,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    SizeConfig.screenWidth * 0.01389,
                                  ),
                                  bottomLeft: Radius.circular(
                                    SizeConfig.screenWidth * 0.01389,
                                  ),
                                ),
                                color: index % 3 == 0
                                    ? gc
                                    : (index % 3 == 1 ? bt : rc),
                              ),
                              child: Icon(
                                index % 3 == 0
                                    ? MdiIcons.clock
                                    : (index % 3 == 1
                                        ? Icons.picture_as_pdf
                                        : MdiIcons.youtube),
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: SizeConfig.screenWidth * 0.089),
                            Container(
                              width: SizeConfig.screenWidth * 135 / 360,
                              child: Text(
                                index % 3 == 0
                                    ? "Quiz"
                                    : (index % 3 == 1
                                        ? "Topic of the PDF"
                                        : "Video Lecture"),
//to define content type and its heading
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.screenWidth * 0.045,
                                ),
                              ),
                            ),
                            Container(
                              width: SizeConfig.screenWidth * 105 / 360,
                              padding: EdgeInsets.only(
                                top: SizeConfig.screenHeight * 5 / 640,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(children: [
                                      Text(
                                        '${this.time} ',
                                        style: TextStyle(
                                          fontSize:
                                              SizeConfig.screenWidth * 10 / 360,
                                          color: Color(0xff848484),
                                        ),
                                      ),
                                      Text(
                                        '|',
                                        style: TextStyle(
                                          fontSize:
                                              SizeConfig.screenWidth * 10 / 360,
                                          color: Color(0xff848484),
                                        ),
                                      ),
                                      Text(
                                        ' ${this.date}',
                                        style: TextStyle(
                                          fontSize:
                                              SizeConfig.screenWidth * 10 / 360,
                                          color: Color(0xff848484),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 3 / 360,
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth * 63 / 360,
                                    height: SizeConfig.screenHeight * 12 / 640,
                                    decoration: BoxDecoration(
                                      color: Color(0xff44D141),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          offset: Offset(0.0, 0.0),
                                          spreadRadius: SizeConfig.b * 0.2,
                                          blurRadius: SizeConfig.b * 0.5,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(
                                        SizeConfig.screenWidth * 10 / 360,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Attempted',
                                        style: TextStyle(
                                          fontSize:
                                              SizeConfig.screenWidth * 8 / 360,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
