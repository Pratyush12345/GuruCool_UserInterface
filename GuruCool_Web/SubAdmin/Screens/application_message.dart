import 'package:flutter/material.dart';
import 'package:flutter_app_subadmin/SizeConfig.dart';
import 'package:flutter_app_subadmin/colors.dart';
import 'package:flutter_app_subadmin/VerticalTabs.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter_app_subadmin/applicationdialogbox.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ApplicationMessage extends StatelessWidget {
  final String studentName;
  final String instituteName;

  ApplicationMessage({
    @required this.studentName,
    @required this.instituteName,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
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
                        height: 100,
                        width: 100,
                        color: Colors.white,
                      ),
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
                            'Modules',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.022,
                                fontWeight: FontWeight.w500,
                                color: Color(0xfff36c24)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Assignments',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Application',
                            style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.020,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1c1c1c)),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.017,
                          ),
                          Text(
                            'Attendance',
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
                    ]),
              ),
              SizedBox(
                width: SizeConfig.screenWidth * 30 / 1440,
              ),
              Container(
                height: SizeConfig.screenHeight * 790 / 900,
                width: SizeConfig.screenWidth * 1120 / 1440,
                padding:
                    EdgeInsets.only(top: SizeConfig.screenHeight * 40 / 900),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 20 / 1440,
                            right: SizeConfig.screenWidth * 20 / 1440),
                        margin: EdgeInsets.only(
                            bottom: SizeConfig.screenHeight * 5 / 900),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: SizeConfig.screenHeight * 40 / 900,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: colorOrangePrimary,
                                        size:
                                            SizeConfig.screenHeight * 30 / 900,
                                      ),
                                      onPressed: () {}),
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 17 / 1440,
                                  ),
                                  Container(
                                    child: Text(
                                      'Subject Of the Application',
                                      style: TextStyle(
                                          color: colorOrangePrimary,
                                          fontSize: SizeConfig.screenHeight *
                                              24 /
                                              900,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 20 / 900,
                            ),
                            Container(
                              height: SizeConfig.screenHeight * 50 / 900,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // CircleAvatar(
                                  //   backgroundColor: Color(0xffA117F6),
                                  //   radius: SizeConfig.screenHeight * 34 / 900,
                                  //   child: Text(
                                  //     'A',
                                  //     style: TextStyle(
                                  //         color: Colors.white,
                                  //         fontSize: SizeConfig.screenHeight *
                                  //             14 /
                                  //             900),
                                  //   ),
                                  // ),
                                  CircularProfileAvatar(
                                    null,
                                    radius: 20 /
                                        900 *
                                        SizeConfig
                                            .screenHeight, // sets radius, default 50.0
                                    backgroundColor: Color(
                                        0xffA117F6), // sets background color, default Colors.white

                                    child: Center(
                                      child: Text(
                                        'A',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ), // sets initials text, set your own style, default Text('')
                                  ),
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 20 / 1440,
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth * 780 / 1440,
                                    child: Text(
                                      'Name',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: SizeConfig.screenHeight *
                                              18 /
                                              900,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Text(
                                    '2:34 Pm | 13/01/2001 ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            SizeConfig.screenHeight * 18 / 900,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 25 / 1440,
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.reply,
                                        color: colorOrangePrimary,
                                        size:
                                            SizeConfig.screenHeight * 20 / 900,
                                      ),
                                      onPressed: () {
                                        studentDialogBox(context);
                                      })
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: SizeConfig.screenHeight * 15 / 900,
                                  horizontal:
                                      SizeConfig.screenWidth * 50 / 1440),
                              child: Text(
                                'hjkhkjgui grwg ebet bebetbebg b\n getbe b rge gbebe be \n wrgrgfrgvfgvf',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        SizeConfig.screenHeight * 18 / 900,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
