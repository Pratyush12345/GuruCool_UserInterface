import 'package:flutter/material.dart';
import 'package:qwe/holidayDialogBox.dart';
import 'package:qwe/freeClassDialogBox.dart';

class AttendanceStats extends StatelessWidget {
  final String courseId;
  final passKey;
  final String monthName;
  final int days;
  final String subjectName;
  final String studentName;
  final String classNumber;
  AttendanceStats({
    @required this.courseId,
    @required this.passKey,
    @required this.monthName,
    @required this.days,
    @required this.subjectName,
    @required this.studentName,
    @required this.classNumber,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig()..init(context);
    return Scaffold(
      body: Stack(alignment: Alignment.bottomRight, children: [
        Container(
          color: bgColor,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: SizeConfig.screenHeight * 0.015625),
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
            SizedBox(height: SizeConfig.screenHeight * 0.015625 * 0.8),
            Container(
              height: SizeConfig.screenHeight * 35 / 640,
              color: Colors.white,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: this.days,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenWidth * 4 / 360,
                        vertical: SizeConfig.screenHeight * 2 / 640,
                      ),
                      child: Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(0, 0),
                                blurRadius: SizeConfig.screenWidth * 0.005 / 2,
                              ),
                            ],
                            gradient: RadialGradient(colors: [
                              Color(0xff23619F),
                              Color(0xff305275),
                            ]),
                            borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.01389,
                            ),
                          ),
                          alignment: Alignment.center,
                          height: SizeConfig.screenHeight * 30 / 640,
                          width: SizeConfig.screenWidth * 30 / 360,
                          child: Text(
                            '${(index + 1).toString()}',
                            style: TextStyle(
                              fontSize: SizeConfig.screenWidth * 0.0333,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                            width: SizeConfig.screenWidth * 0.02777778 * 0.1),
                      ]),
                    );
                  }),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.015625 * 0.5),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 17 / 360,
                vertical: SizeConfig.screenHeight * 0,
              ),
              height: SizeConfig.screenHeight * 30 / 640,
              color: Color.fromRGBO(243, 108, 36, 0.1),
              child: Row(children: [
                Container(
                  width: SizeConfig.screenWidth * 150 / 360,
                  child: Text(
                    'Students',
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 0.0333,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1c1c1c),
                    ),
                  ),
                ),
                Text(
                  'Present',
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.0333,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1c1c1c),
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.02777778 * 2.5),
                Text(
                  'Absent',
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.0333,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1c1c1c),
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.02777778 * 2.5),
                Text(
                  'Leave',
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.0333,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1c1c1c),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0,
                  vertical: SizeConfig.screenHeight * 10 / 640,
                ),
                color: Colors.white,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.screenWidth * 17 / 360,
                                vertical: SizeConfig.screenHeight * 0,
                              ),
                              child: Row(children: [
                                Container(
                                  width: SizeConfig.screenWidth * 150 / 360,
                                  child: Text(
                                    this.studentName,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.0389,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff1c1c1c),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: SizeConfig.screenWidth *
                                        0.02777778 *
                                        0.7),
                                InkWell(
                                  child: Container(
                                    width: SizeConfig.screenWidth * 20 / 360,
                                    height: SizeConfig.screenHeight * 20 / 640,
                                    decoration: BoxDecoration(
                                      color: Color(0xffdadada),
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.screenWidth * 0.01389),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: SizeConfig.screenWidth *
                                        0.02777778 *
                                        4.7),
                                InkWell(
                                  child: Container(
                                    width: SizeConfig.screenWidth * 20 / 360,
                                    height: SizeConfig.screenHeight * 20 / 640,
                                    decoration: BoxDecoration(
                                      color: Color(0xffdadada),
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.screenWidth * 0.01389),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: SizeConfig.screenWidth *
                                        0.02777778 *
                                        4.4),
                                InkWell(
                                  child: Container(
                                    width: SizeConfig.screenWidth * 20 / 360,
                                    height: SizeConfig.screenHeight * 20 / 640,
                                    decoration: BoxDecoration(
                                      color: Color(0xffdadada),
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.screenWidth * 0.01389),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            SizedBox(
                                height: SizeConfig.screenHeight * 0.015625),
                            Container(
                              color: Colors.black,
                              height: SizeConfig.screenHeight * 0.4 / 640,
                            ),
                            SizedBox(
                                height: SizeConfig.screenHeight * 0.015625),
//showing material button after last index
                            index == 9
                                ? Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            SizeConfig.screenWidth * 17 / 360),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      minWidth:
                                          SizeConfig.screenWidth * 140 / 360,
                                      height:
                                          SizeConfig.screenHeight * 0.046875,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.screenWidth * 0.01389),
                                      ),
                                      color: gc,
                                      elevation: 5,
                                      child: Text(
                                        "Full Day Submission",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize:
                                              SizeConfig.screenWidth * 0.0333,
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                          ]);
                    }),
              ),
            ),
          ]),
        ),
//for masked and non using only to be active after pressing edit button
        Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          color: Colors.black.withOpacity(0.2),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: SizeConfig.screenHeight * 21 / 640,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            InkWell(
              onTap: (() {
                showHolidayDialogBox(context);
              }),
              child: Container(
                width: SizeConfig.screenWidth * 40 / 360,
                height: SizeConfig.screenHeight * 40 / 640,
                decoration: BoxDecoration(
                  color: gc,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: Offset(0, 4),
                      blurRadius: SizeConfig.screenWidth * 0.005,
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Text(
                  'Full day Holiday',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 8 / 360,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: SizeConfig.screenWidth * 0.02777778),
            InkWell(
              onTap: (() {
                showFreeClassDialogBox(context);
              }),
              child: Container(
                width: SizeConfig.screenWidth * 40 / 360,
                height: SizeConfig.screenHeight * 40 / 640,
                decoration: BoxDecoration(
                  color: gc,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: Offset(0, 4),
                      blurRadius: SizeConfig.screenWidth * 0.005,
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 5 / 360,
                    vertical: SizeConfig.screenHeight * 0),
                alignment: Alignment.center,
                child: Text(
                  'Free Class',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 8 / 360,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: SizeConfig.screenWidth * 0.02777778 * 1.3),
            InkWell(
              child: Container(
                width: SizeConfig.screenWidth * 51 / 360,
                height: SizeConfig.screenHeight * 51 / 640,
                decoration: BoxDecoration(
                  color: gc,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: Offset(0, 4),
                      blurRadius: SizeConfig.screenWidth * 0.005,
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: SizeConfig.screenWidth * 28 / 360,
                ),
              ),
            ),
            SizedBox(width: SizeConfig.screenWidth * 0.02777778 * 2),
          ]),
        ),
      ]),
    );
  }
}
