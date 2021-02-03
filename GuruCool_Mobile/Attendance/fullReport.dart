import 'package:flutter/material.dart';

class FullReport extends StatelessWidget {
  final String totalWorkingDays;
  final String studentName;
  final String startDate;
  final String endDate;
  final int presentDays;
  final int absentDays;
  final int leaveDays;

  FullReport({
    @required this.totalWorkingDays,
    @required this.studentName,
    @required this.startDate,
    @required this.endDate,
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
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 12 / 360,
                      top: SizeConfig.screenHeight * 12 / 640,
                      bottom: SizeConfig.screenHeight * 12 / 640,
                    ),
                    child: Text(
                      'Total working days : $totalWorkingDays',
                      style: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 10 / 360,
                          fontWeight: FontWeight.w400),
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
              height: SizeConfig.screenHeight * 60 / 640,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: SizeConfig.screenWidth * 191 / 360,
                        margin: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 18 / 360,
                          top: SizeConfig.screenHeight * 8 / 640,
                          bottom: SizeConfig.screenHeight * 3 / 640,
                        ),
                        child: Text(
                          'Start Date',
                          style: TextStyle(
                            color: Color(0xff848484),
                            fontSize: SizeConfig.screenWidth * 10 / 360,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 8 / 640,
                          bottom: SizeConfig.screenHeight * 3 / 640,
                        ),
                        child: Text(
                          'End Date',
                          style: TextStyle(
                              color: Color(0xff848484),
                              fontSize: SizeConfig.screenWidth * 10 / 360,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: SizeConfig.screenWidth * 191 / 360,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 18 / 360,
                              ),
                              height: SizeConfig.screenWidth * 30 / 360,
                              width: SizeConfig.screenWidth * 30 / 360,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5F5),
                                borderRadius: BorderRadius.circular(
                                  SizeConfig.screenWidth * 2 / 360,
                                ),
                              ),
                              child: TextField(
                                cursorColor: textColor,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.screenHeight * 15 / 640),
                                ),
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 10 / 360,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 5 / 360,
                                right: SizeConfig.screenWidth * 5 / 360,
                              ),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color: Color(0xff848484),
                                  fontSize: SizeConfig.screenWidth * 10 / 360,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              height: SizeConfig.screenWidth * 30 / 360,
                              width: SizeConfig.screenWidth * 30 / 360,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5F5),
                                borderRadius: BorderRadius.circular(
                                  SizeConfig.screenWidth * 2 / 360,
                                ),
                              ),
                              child: TextField(
                                cursorColor: textColor,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.screenHeight * 15 / 640),
                                ),
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.screenWidth * 10 / 360),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 5 / 360,
                                right: SizeConfig.screenWidth * 5 / 360,
                              ),
                              child: Text(
                                '-',
                                style: TextStyle(
                                    color: Color(0xff848484),
                                    fontSize: SizeConfig.screenWidth * 10 / 360,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              height: SizeConfig.screenWidth * 30 / 360,
                              width: SizeConfig.screenWidth * 46 / 360,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5F5),
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenWidth * 2 / 360),
                              ),
                              child: TextField(
                                cursorColor: textColor,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.screenHeight * 15 / 640),
                                ),
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.screenWidth * 10 / 360),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 18 / 360,
                              ),
                              height: SizeConfig.screenWidth * 30 / 360,
                              width: SizeConfig.screenWidth * 30 / 360,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5F5),
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenWidth * 2 / 360),
                              ),
                              child: TextField(
                                cursorColor: textColor,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.screenHeight * 15 / 640),
                                ),
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.screenWidth * 10 / 360),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 5 / 360,
                                right: SizeConfig.screenWidth * 5 / 360,
                              ),
                              child: Text(
                                '-',
                                style: TextStyle(
                                    color: Color(0xff848484),
                                    fontSize: SizeConfig.screenWidth * 10 / 360,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              height: SizeConfig.screenWidth * 30 / 360,
                              width: SizeConfig.screenWidth * 30 / 360,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5F5),
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenWidth * 2 / 360),
                              ),
                              child: TextField(
                                cursorColor: textColor,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.screenHeight * 15 / 640),
                                ),
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.screenWidth * 10 / 360),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 5 / 360,
                                right: SizeConfig.screenWidth * 5 / 360,
                              ),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color: Color(0xff848484),
                                  fontSize: SizeConfig.screenWidth * 10 / 360,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              height: SizeConfig.screenWidth * 30 / 360,
                              width: SizeConfig.screenWidth * 46 / 360,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5F5),
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.screenWidth * 2 / 360),
                              ),
                              child: TextField(
                                cursorColor: textColor,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.screenHeight * 15 / 640),
                                ),
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.screenWidth * 10 / 360),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 3 / 640,
            ),
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 35 / 640,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 146 / 360,
                    margin: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 12 / 360,
                    ),
                    child: Text(
                      'Total working days : ${this.totalWorkingDays}',
                      style: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 10 / 360,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    child: Text(
                      '${this.startDate} - ${this.endDate}',
                      style: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 10 / 360,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 3 / 640,
            ),
            Container(
              color: Colors.white,
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 30 / 640,
              child: Container(
                color: Color(0x1AF36C24),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 18 / 360,
                        right: SizeConfig.screenWidth * 105 / 360,
                      ),
                      child: Text(
                        'Students',
                        style: TextStyle(
                            color: textColor,
                            fontSize: SizeConfig.screenWidth * 12 / 360,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Presence',
                        style: TextStyle(
                          color: textColor,
                          fontSize: SizeConfig.screenWidth * 12 / 360,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 16 / 360,
                      ),
                      child: Text(
                        'Absence',
                        style: TextStyle(
                          color: textColor,
                          fontSize: SizeConfig.screenWidth * 12 / 360,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 18 / 360,
                      ),
                      child: Text(
                        'Leave',
                        style: TextStyle(
                          color: textColor,
                          fontSize: SizeConfig.screenWidth * 12 / 360,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: SizeConfig.screenHeight * 40 / 640,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                                color: textColor,
                                width: SizeConfig.screenWidth * 0.4 / 360),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: SizeConfig.screenWidth * 18 / 360,
                                  ),
                                  width: SizeConfig.screenWidth * 153 / 360,
                                  child: Text(
                                    this.studentName,
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize:
                                          SizeConfig.screenWidth * 14 / 360,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    right: SizeConfig.screenWidth * 16 / 360,
                                  ),
                                  width: SizeConfig.screenWidth * 51 / 360,
                                  child: Center(
                                    child: Text(
                                      this.presentDays.toString(),
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize:
                                            SizeConfig.screenWidth * 14 / 360,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    right: SizeConfig.screenWidth * 18 / 360,
                                  ),
                                  width: SizeConfig.screenWidth * 47 / 360,
                                  child: Center(
                                    child: Text(
                                      this.absentDays.toString(),
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize:
                                            SizeConfig.screenWidth * 14 / 360,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: SizeConfig.screenWidth * 32 / 360,
                                  child: Center(
                                    child: Text(
                                      this.leaveDays.toString(),
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize:
                                            SizeConfig.screenWidth * 14 / 360,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: null,
                                  child: Icon(
                                    Icons.chevron_right,
                                    color: gc,
                                    size: SizeConfig.screenWidth * 16 / 360,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
