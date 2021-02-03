import 'package:flutter/material.dart';

class AttendanceSubmission extends StatelessWidget {
  final String courseId;
  final passKey;
  final String subjectName;
  final String startTime;
  final String status;
  final String endTime;
  final String monthName;
  final int days;
  AttendanceSubmission({
    @required this.courseId,
    @required this.passKey,
    @required this.subjectName,
    @required this.startTime,
    @required this.status,
    @required this.endTime,
    @required this.monthName,
    @required this.days,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig()..init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: gc,
        child: Icon(
          Icons.check,
          size: SizeConfig.screenWidth * 28 / 360,
        ),
      ),
      body: Container(
        color: bgColor,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              horizontal: SizeConfig.screenWidth * 21 / 360,
              vertical: SizeConfig.screenHeight * 11 / 640,
            ),
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Attendance Submission Status',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.02778,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 23 / 640),
              Row(children: [
                Container(
                  alignment: Alignment.center,
                  width: SizeConfig.screenWidth * 75 / 360,
                  child: Text(
                    'Subject',
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 0.0389,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1c1c1c),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: SizeConfig.screenWidth * 130 / 360,
                  child: Text(
                    'Slot',
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 0.0389,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1c1c1c),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: SizeConfig.screenWidth * 75 / 360,
                  child: Text(
                    'Status',
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 0.0389,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1c1c1c),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: SizeConfig.screenHeight * 0.015625 * 0.9),
              Container(
                height: SizeConfig.screenHeight * 0.5 / 640,
                color: Colors.black,
              ),
            ]),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0,
                vertical: SizeConfig.screenHeight * 9 / 640,
              ),
              color: Colors.white,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.screenWidth * 21 / 360,
                              vertical: SizeConfig.screenHeight * 0,
                            ),
                            child: Row(children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: SizeConfig.screenWidth * 75 / 360,
                                child: Text(
                                  this.subjectName,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 0.0389,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff1c1c1c),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                width: SizeConfig.screenWidth * 130 / 360,
                                child: Text(
                                  '${this.startTime} - ${this.endTime}',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 0.0389,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff1c1c1c),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.centerRight,
                                width: SizeConfig.screenWidth * 75 / 360,
                                child: Text(
                                  this.status,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 0.0389,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff39DC2B),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(height: SizeConfig.screenHeight * 0.015625),
                        ]);
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
