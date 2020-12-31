import 'package:flutter/material.dart';

class MonthlyReport extends StatelessWidget {
  final String totalWorkingDays;
  final String studentName;
  final int presentDays;
  final int absentDays;
  final int leaveDays;
  final String monthName;

  MonthlyReport({
    @required this.totalWorkingDays,
    @required this.studentName,
    @required this.monthName,
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
              height: SizeConfig.screenHeight * 35 / 640,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 68 / 360,
                vertical: SizeConfig.screenHeight * 0 / 640,
              ),
              child: Row(children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: gcc,
                    size: SizeConfig.screenWidth * 14 / 360,
                  ),
                ),
                Spacer(),
                Text(
                  '${this.monthName} 2020',
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.0389,
                    fontWeight: FontWeight.w700,
                    color: gcc,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: gcc,
                    size: SizeConfig.screenWidth * 14 / 360,
                  ),
                ),
              ]),
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
                            fontWeight: FontWeight.w500),
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
                            fontWeight: FontWeight.w500),
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
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
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
                                    overflow: TextOverflow.ellipsis,
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
