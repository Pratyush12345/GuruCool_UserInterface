import 'package:flutter/material.dart';
import 'package:flutter_table/SizeConfig.dart';
import 'package:flutter_table/colors.dart';

class SingleContainer extends StatelessWidget {
  final bool lab;
  final String teacher;
  final String subject;

  SingleContainer(
      {@required this.lab, @required this.teacher, @required this.subject});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(right: 0.5, bottom: 0.5),
      height: SizeConfig.screenHeight * 100 / 900,
      //100,
      width: SizeConfig.screenWidth * 150 / 1440,
      //145,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff848484),
          width: 1.0,
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                left: SizeConfig.screenWidth * 13 / 1440,
                top: SizeConfig.screenHeight * 7 / 900),
            height: SizeConfig.screenHeight * 16 / 900,
            width: SizeConfig.screenWidth * 40 / 1440,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                // color: Colors.black,
                color: lab == false ? Color(0xffF36C24) : Color(0xffA6CAED),
                width: 1.0,
              ),
              color: lab == false ? Color(0xffF36C24) : Color(0xffA6CAED),
            ),
            //),
            child: Center(
              child: Text(
                lab == false ? 'Class' : 'Lab',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.screenHeight * 12 / 900,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 6 / 900,
          ),
          Center(
            child: Text(
              subject,
              style: TextStyle(
                  letterSpacing: SizeConfig.b * 0.027,
                  color: Colors.black,
                  fontSize: SizeConfig.screenHeight * 18 / 900,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Center(
            child: Text(
              teacher,
              style: TextStyle(
                  letterSpacing: SizeConfig.b * 0.027,
                  color: Color(0xff848484),
                  fontSize: SizeConfig.screenHeight * 15 / 900,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnContainer extends StatelessWidget {
  final String day;
  ColumnContainer({@required this.day});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: colorBluePrimary,
      height: SizeConfig.screenHeight * 100 / 900,
      width: SizeConfig.screenWidth * 150 / 1400,
      child: Center(
        child: Text(
          day,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: SizeConfig.screenHeight * 20 / 900,
          ),
        ),
      ),
    );
  }
}

class RowContainer extends StatelessWidget {
  final String startTime;
  final String endTime;
  RowContainer({@required this.startTime, @required this.endTime});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight * 100 / 900,
      width: SizeConfig.screenWidth * 150 / 1440,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            startTime,
            style: TextStyle(
              color: colorBluePrimary,
              fontSize: SizeConfig.screenHeight * 18 / 900,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            endTime,
            style: TextStyle(
              color: colorBluePrimary,
              fontSize: SizeConfig.screenHeight * 18 / 900,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
