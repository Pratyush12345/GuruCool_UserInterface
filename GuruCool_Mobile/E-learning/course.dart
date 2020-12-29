import 'package:flutter/material.dart';
import 'package:qwe/utils/bottom.dart';
import 'package:qwe/utils/Colors.dart';
import '../../utils/sizeConfig.dart';

class Course extends StatelessWidget {
  final String courseId;
  final passKey;
  final String classNumber;
  final String subjectNumber;
  final String schoolName;
  final String imgCollegeUrl;
  Course({
    @required this.courseId,
    @required this.passKey,
    @required this.classNumber,
    @required this.subjectNumber,
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
            child: Text(this.schoolName,
                style: TextStyle(
                    color: gc,
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.screenWidth * 0.045))),
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
            SizedBox(width: SizeConfig.screenWidth * 0.025)
          ])
        ],
      ),
      bottomNavigationBar: Bottom(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add, size: SizeConfig.b * 8, color: Colors.white),
        backgroundColor: Color(0xffF36C24),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth * 0.08611),
          color: Color(0xffE5E5E5),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Expanded(
                  child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: SizeConfig.screenWidth * 0.07,
                            mainAxisSpacing: SizeConfig.screenHeight * 0.034375,
                            crossAxisCount: 2,
                          ),
                          itemCount: 10,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return Container(
                                padding:
                                    EdgeInsets.only(left: SizeConfig.b * 3),
                                height: SizeConfig.screenHeight * 0.215625,
                                width: SizeConfig.screenWidth * 0.3833,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset(0.0, 2),
                                      spreadRadius: SizeConfig.b * 0.4,
                                      blurRadius: SizeConfig.b * 0.5,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular(SizeConfig.b * 5),
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
//Image.asset('images/buk.png'),
                                          ]),
                                      Spacer(),
                                      Text("Class ${this.classNumber}",
                                          style: TextStyle(
                                              fontSize: SizeConfig.screenWidth *
                                                  0.056,
                                              fontWeight: FontWeight.w300)),
                                      Text(" ${this.subjectNumber} Subjects",
                                          style: TextStyle(
                                              fontSize: SizeConfig.screenWidth *
                                                  0.028,
                                              fontWeight: FontWeight.w400)),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Transform(
                                                transform:
                                                    Matrix4.translationValues(
                                                        0,
                                                        -SizeConfig
                                                                .screenHeight *
                                                            0.025,
                                                        0),
                                                child: IconButton(
                                                    icon: Icon(
                                                        Icons.arrow_right_alt,
                                                        color: gc),
                                                    padding: EdgeInsets.zero,
                                                    iconSize: SizeConfig.b * 6,
                                                    onPressed: () {
                                                      print('Forward');
                                                    })),
                                          ])
                                    ]));
                          })))
            ],
          )),
    );
  }
}
