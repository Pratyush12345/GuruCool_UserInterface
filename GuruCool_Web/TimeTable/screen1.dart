import 'package:flutter/material.dart';
import 'package:flutter_table/SizeConfig.dart';
import 'package:flutter_table/colors.dart';
import 'package:flutter_table/VerticalTabs.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_table/timetable.dart';

class Screen2 extends StatelessWidget {
  final String studentName;
  final String instituteName;
  final int edit = 0;
  Screen2({
    @required this.studentName,
    @required this.instituteName,
  });
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: AppBar(
          leading: Container(
            height: SizeConfig.screenHeight * 60 / 900,
            width: SizeConfig.screenWidth * 60 / 100,
            color: Color(0xff2E3842),
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.lightBlueAccent,
              child: Icon(Icons.school),
            ),
          ),
          backgroundColor: Colors.white,
          toolbarHeight: 60 / 900 * SizeConfig.screenHeight,
          title: Text(
            this.instituteName,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: colorOrangePrimary,
            ),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: colorOrangePrimary,
                  ),
                  onPressed: () {},
                ),
                Text(
                  this.studentName,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffA6CAED),
                  radius: 45 / 900 * SizeConfig.screenHeight,
                  child: Text(
                    this.studentName.substring(0, 1),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down_outlined,
                    color: Color(0xff848484),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                child: TabBarView(
                  children: [
                    Container(
                      //width: 400,
                      color: Color(0xffE5E5E5),
                      child: Center(
                        child: Text('Subject'),
                      ),
                    ),
                    Container(
                      //width: 400,
                      color: Color(0xffE5E5E5),
                      child: Center(
                        child: Text('Student'),
                      ),
                    ),
                    Stack(
                      children: [
                        Positioned(
                            left: SizeConfig.screenWidth * 1210 / 1440,
                            top: SizeConfig.screenHeight * 130 / 900,
                            child: Container(
                              width: SizeConfig.screenWidth * 150 / 1440,
                              height: SizeConfig.screenHeight * 40 / 900,
                              child: RaisedButton(
                                elevation: 5,
                                onPressed: () {},
                                color: colorOrangePrimary,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      edit == 1 ? 'Edit' : 'Save',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: SizeConfig.screenHeight *
                                              18 /
                                              900),
                                    ),
                                    SizedBox(
                                        width:
                                            SizeConfig.screenWidth * 10 / 1440),
                                    Icon(
                                      edit == 1 ? Icons.edit : Icons.save,
                                      color: Colors.white,
                                      size: SizeConfig.screenHeight * 14 / 900,
                                    ),
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            )),
                        Positioned(
                            top: SizeConfig.screenHeight * 240 / 900,
                            left: SizeConfig.screenWidth * 300 / 1440,
                            child:
                                //Container(
                                //children: [
                                //child: Expanded(child:
                                Screen1(
                              rows: 5,
                              columns: 6,
                            )),
                      ],
                    ),
                    Container(
                      //width: 400,
                      color: Color(0xffE5E5E5),
                      child: Center(
                        child: Text('Time-Table'),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  height: SizeConfig.screenHeight * 840 / 900,
                  width: SizeConfig.screenWidth * 247 / 1440,
                  child: VerticalTabs(
                    gradient: LinearGradient(
                        colors: [Color(0xff2E3842), Color(0xff305275)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    tabsWidth: SizeConfig.screenWidth * 60 / 1440,
                    selectedTabBackgroundColor: Colors.white70,
                    tabBackgroundColor: Color(0xff273f57),
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.view_week_rounded,
                          color: Colors.white,
                          size: SizeConfig.screenWidth * 0.0159,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          MdiIcons.viewGrid,
                          color: Colors.white,
                          size: SizeConfig.screenWidth * 0.0159,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.account_balance,
                          color: Colors.white,
                          size: SizeConfig.screenWidth * 0.0159,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          MdiIcons.menu,
                          color: Colors.white,
                          size: SizeConfig.screenWidth * 0.0159,
                        ),
                      ),
                    ],
                    contents: [
                      Container(
                        padding: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.04,
                          right: SizeConfig.screenHeight * 0.05,
                          left: SizeConfig.screenHeight * 0.040,
                        ),
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: ListView(children: [
                          Text(
                            'Courses',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.022,
                                fontWeight: FontWeight.w500,
                                color: Color(0xfff36c24)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Class 1st',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Class 2nd',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Class 3rd',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Class 4th',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Class 5th',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Class 6th',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Class 7th',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Class 8th',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Class 9th',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                        ]),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.white,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.white,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: SizeConfig.screenHeight * 28 / 900,
                left: SizeConfig.screenWidth * 300 / 1440,
                right: SizeConfig.screenWidth * 70 / 900,
                bottom: SizeConfig.screenHeight * 750 / 900,
                child: Container(
                  width: SizeConfig.screenWidth * 1058 / 1440,
                  height: SizeConfig.screenHeight * 54 / 900,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          SizeConfig.screenHeight * 0.10)),
                  child: TabBar(
                    indicatorWeight: SizeConfig.v * 0.56,
                    indicatorColor: Color(0xffF36C24),
                    labelPadding: EdgeInsets.zero,
                    labelColor: Color(0xffF36C24),
                    indicatorSize: TabBarIndicatorSize.label,
                    automaticIndicatorColorAdjustment: true,
                    unselectedLabelColor: Color(0xff515151),
                    tabs: [
                      Tab(
                        child: Text(
                          'Subject                    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.screenHeight * 0.024,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Student                    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.screenHeight * 0.024,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Time-Table                    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.screenHeight * 0.024,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Library                    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.screenHeight * 0.024,
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
        //],
        //),
        // ),
      ),
    );
  }
}
