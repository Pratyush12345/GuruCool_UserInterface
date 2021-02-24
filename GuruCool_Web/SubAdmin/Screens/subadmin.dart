import 'package:flutter/material.dart';
import 'package:flutter_app_subadmin/SizeConfig.dart';
import 'package:flutter_app_subadmin/colors.dart';
import 'package:flutter_app_subadmin/VerticalTabs.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter_app_subadmin/application_message.dart';

class SubAdmin extends StatelessWidget {
  final String studentName;
  final String instituteName;
  SubAdmin({
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
        child: Stack(
          children: [
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
            ),
            Positioned(
              top: SizeConfig.screenHeight * 33 / 900,
              left: SizeConfig.screenWidth * 281 / 1440,
              right: SizeConfig.screenWidth * 37 / 1440,
              child: Container(
                color: Colors.white,
                height: SizeConfig.screenHeight * 800 / 900,
                width: SizeConfig.screenWidth * 1122 / 1440,
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return RaisedButton(
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ApplicationMessage(
                                        instituteName: 'Institute Name',
                                        studentName: 'Mahiti Banka',
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                height: SizeConfig.screenHeight * 65 / 900,
                                width: SizeConfig.screenWidth * 1060 / 1440,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xff848484),
                                        width: SizeConfig.screenHeight *
                                            0.3 /
                                            900),
                                  ),
                                  color: Colors.white,
                                ),
                                // margin: EdgeInsets.only(
                                //     left: SizeConfig.screenWidth * 16 / 1440,
                                //     right: SizeConfig.screenWidth * 20 / 1440),
                                // padding: EdgeInsets.only(
                                //     left: SizeConfig.screenWidth * 11 / 1440,
                                //     right: SizeConfig.screenWidth * 15 / 1440,
                                //     top: SizeConfig.screenHeight * 15 / 900,
                                //     bottom: SizeConfig.screenHeight * 14 / 900),
                                child: Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  children: [
                                    // CircleAvatar(
                                    //   backgroundColor: Color(0xffA6CAED),
                                    //   child: Icon(Icons.sort_by_alpha),
                                    //   maxRadius: 20,
                                    // ),
                                    // Container(
                                    //   height:
                                    //       SizeConfig.screenHeight * 50 / 900,
                                    //   width:
                                    //       SizeConfig.screenWidth * 100 / 1440,
                                    //   // margin: EdgeInsets.only(
                                    //   left:
                                    //       SizeConfig.screenWidth * 11 / 1440,
                                    // ),
                                    //child:
                                    // CircleAvatar(
                                    //   //backgroundColor: Color(0xffA6CAED),
                                    //   radius:
                                    //       20 / 900 * SizeConfig.screenHeight,
                                    //   child: Text(
                                    //     this.studentName.substring(0, 1),
                                    //     style: TextStyle(color: Colors.black),
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

                                    // CircleAvatar(
                                    //   backgroundColor: Color(0xffA117F6),
                                    //   radius:
                                    //       SizeConfig.screenHeight * 20 / 900,
                                    //   child: Text(
                                    //     'A',
                                    //     style: TextStyle(
                                    //       color: Colors.white,
                                    //       // fontSize:
                                    //       //     SizeConfig.screenHeight *
                                    //       //         10 /
                                    //       //         900
                                    //       //         ),
                                    //     ),
                                    //   ),
                                    // ),
                                    // ),
                                    SizedBox(
                                      width: SizeConfig.screenWidth * 20 / 1440,
                                    ),
                                    Expanded(
                                      child: Container(
                                        // padding: EdgeInsets.only(
                                        //     left: SizeConfig.screenWidth *
                                        //         20 /
                                        //         1440),
                                        // width:
                                        //     SizeConfig.screenWidth * 200 / 1440,
                                        // height:
                                        //     SizeConfig.screenHeight * 60 / 900,
                                        child: Text(
                                          'Name',
                                          //'w',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  SizeConfig.screenHeight *
                                                      18 /
                                                      900,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: SizeConfig.screenWidth *
                                                100 /
                                                1440),
                                        child: Text(
                                          'Subject Of Application',
                                          //'w',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  SizeConfig.screenHeight *
                                                      18 /
                                                      900,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: SizeConfig.screenWidth *
                                                40 /
                                                1440),
                                        child: Text(
                                          'First Line of Application...',
                                          //'w',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  SizeConfig.screenHeight *
                                                      18 /
                                                      900,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: SizeConfig.screenWidth *
                                                100 /
                                                1440),
                                        child: Text(
                                          '13/01/2001',
                                          // 'w',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  SizeConfig.screenHeight *
                                                      18 /
                                                      900,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
