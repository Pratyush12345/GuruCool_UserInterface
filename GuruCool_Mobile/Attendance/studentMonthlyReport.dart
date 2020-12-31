import 'package:flutter/material.dart';

class StudentMonthlyReport extends StatelessWidget {
  final String studentName;
  final String studentEmail;
  final String studentMobileNo;
  final String totalWorkingDays;
  final String subjectName;
  final int presentDays;
  final int absentDays;
  final int leaveDays;
  final double percentAttendance;

  StudentMonthlyReport({
    @required this.studentEmail,
    @required this.subjectName,
    @required this.percentAttendance,
    @required this.studentMobileNo,
    @required this.studentName,
    @required this.totalWorkingDays,
    @required this.presentDays,
    @required this.absentDays,
    @required this.leaveDays,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig()..init(context);
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 6 / 640,
            ),
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 35 / 640,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'December 2020',
                      style: TextStyle(
                        color: gcc,
                        fontSize: SizeConfig.screenWidth * 14 / 360,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 3 / 640,
            ),
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 30 / 640,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 18 / 360,
                    ),
                    child: Text(
                      'Total working days : $totalWorkingDays',
                      style: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 10 / 360,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 3 / 640,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                width: SizeConfig.screenWidth,
                child: Stack(
                  children: [
                    Positioned(
                      left: SizeConfig.screenWidth * 20 / 360,
                      top: SizeConfig.screenHeight * 13 / 640,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                studentName,
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: SizeConfig.screenWidth * 16 / 360,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 4 / 640,
                            ),
                            Container(
                              child: Text(
                                studentEmail,
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: SizeConfig.screenWidth * 12 / 360,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 2 / 640,
                            ),
                            Container(
                              child: Text(
                                studentMobileNo,
                                style: TextStyle(
                                  color: gc,
                                  fontSize: SizeConfig.screenWidth * 12 / 360,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: SizeConfig.screenWidth * 24 / 360,
                      top: SizeConfig.screenHeight * 13 / 640,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: SizeConfig.screenWidth * 16 / 360,
                              backgroundColor: Colors.purple,
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 7 / 640,
                            ),
                            Container(
                              child: Text(
                                'View Profile',
                                style: TextStyle(
                                  color: gc,
                                  fontSize: SizeConfig.screenWidth * 12 / 360,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: SizeConfig.screenWidth * 20 / 360,
                      top: SizeConfig.screenHeight * 74 / 640,
                      child: Container(
                        width: SizeConfig.screenWidth * 320 / 360,
                        height: SizeConfig.screenHeight * 374 / 640,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x1A1C1C1C),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: SizeConfig.screenWidth * 320 / 360,
                              height: SizeConfig.screenHeight * 30 / 640,
                              color: Color(0x1AF36C24),
                              child: Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: SizeConfig.screenWidth * 10 / 360,
                                    ),
                                    Text(
                                      'Attendance Report',
                                      style: TextStyle(
                                        color: gc,
                                        fontSize:
                                            SizeConfig.screenWidth * 12 / 360,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: SizeConfig.screenWidth * 320 / 360,
                              height: SizeConfig.screenHeight * 35 / 640,
                              child: Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width:
                                            SizeConfig.screenWidth * 18 / 360),
                                    Container(
                                      width: SizeConfig.screenWidth * 124 / 360,
                                      child: Text(
                                        'Subjects',
                                        style: TextStyle(
                                          color: textColor,
                                          fontSize:
                                              SizeConfig.screenWidth * 14 / 360,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: SizeConfig.screenWidth * 65 / 360,
                                      child: Text(
                                        'Presence',
                                        style: TextStyle(
                                          color: textColor,
                                          fontSize:
                                              SizeConfig.screenWidth * 13 / 360,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: SizeConfig.screenWidth * 61 / 360,
                                      child: Text(
                                        'Absence',
                                        style: TextStyle(
                                          color: textColor,
                                          fontSize:
                                              SizeConfig.screenWidth * 13 / 360,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Leave',
                                        style: TextStyle(
                                          color: textColor,
                                          fontSize:
                                              SizeConfig.screenWidth * 13 / 360,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Color(0xff848484),
                              height: SizeConfig.screenHeight * 0.5 / 640,
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 16,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        width:
                                            SizeConfig.screenWidth * 320 / 360,
                                        height:
                                            SizeConfig.screenHeight * 35 / 640,
                                        child: Container(
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: SizeConfig.screenWidth *
                                                    18 /
                                                    360,
                                              ),
                                              Container(
                                                width: SizeConfig.screenWidth *
                                                    124 /
                                                    360,
                                                child: Text(
                                                  this.subjectName,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: textColor,
                                                    fontSize:
                                                        SizeConfig.screenWidth *
                                                            14 /
                                                            360,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: SizeConfig.screenWidth *
                                                    65 /
                                                    360,
                                                child: Center(
                                                  child: Text(
                                                    this.presentDays.toString(),
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontSize: SizeConfig
                                                                .screenWidth *
                                                            14 /
                                                            360,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: SizeConfig.screenWidth *
                                                    61 /
                                                    360,
                                                child: Center(
                                                  child: Text(
                                                    this.absentDays.toString(),
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontSize: SizeConfig
                                                                .screenWidth *
                                                            14 /
                                                            360,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: SizeConfig.screenWidth *
                                                    40 /
                                                    360,
                                                child: Center(
                                                  child: Text(
                                                    this.leaveDays.toString(),
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontSize: SizeConfig
                                                                .screenWidth *
                                                            14 /
                                                            360,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 10 / 640,
                            ),
                            Container(
                              width: SizeConfig.screenWidth * 320 / 360,
                              height: SizeConfig.screenHeight * 55 / 640,
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.screenWidth * 20 / 360,
                                  vertical: SizeConfig.screenHeight * 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height:
                                            SizeConfig.screenHeight * 5 / 640,
                                      ),
                                      Text(
                                        'Total Attendance',
                                        style: TextStyle(
                                          color: textColor,
                                          fontSize:
                                              SizeConfig.screenWidth * 12 / 360,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            SizeConfig.screenHeight * 3 / 640,
                                      ),
                                      Text(
                                        '${this.percentAttendance}%',
                                        style: TextStyle(
                                          color: gc,
                                          fontSize:
                                              SizeConfig.screenWidth * 26 / 360,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: gc,
                                    radius: SizeConfig.screenWidth * 20 / 360,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
