import 'package:flutter/material.dart';
import 'package:qwe/holidayDialogBox.dart';

class AttendanceStatsFreeClass extends StatelessWidget {
  final String courseId;
  final passKey;
  final String monthName;
  final int days;
  AttendanceStatsFreeClass({
    @required this.courseId,
    @required this.passKey,
    @required this.monthName,
    @required this.days,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig()..init(context);
    return Scaffold(
      body: Stack(alignment: Alignment.bottomRight, children: [
        Container(
          color: bgColor,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
            SizedBox(height: SizeConfig.screenHeight * 0.015625 * 10.4),
            Image.asset('images/leaf1.png'),
            SizedBox(height: SizeConfig.screenHeight * 0.015625 * 2),
            Text(
              'Free Class!!!',
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.0389,
                fontWeight: FontWeight.w400,
                color: Color(0xff1c1c1c),
              ),
            ),
          ]),
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
