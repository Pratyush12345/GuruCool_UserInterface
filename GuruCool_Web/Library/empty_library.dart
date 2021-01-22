import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:vertical_tabs/vertical_tabs.dart';
import '../Utils/SizeConfig.dart';
import '../widgets/VerticalTabs.dart';

class Library extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xffE5E5E5),
        appBar: AppBar(
          //toolbarOpacity: 0,
          toolbarHeight: SizeConfig.screenHeight * 0.066,
          backgroundColor: Colors.white,
          titleSpacing: -5,
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Color(0xffF36C24),
              ),
              onPressed: () {
                print('Show menu');
                _scaffoldKey.currentState.openDrawer();
              }),
          title: Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.020),
            child: Text(
              'SchoolName',
              style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.02,
                  color: Color(0xffF36C24),
                  fontWeight: FontWeight.w400),
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  color: Color(0xffF36C24),
                ),
                onPressed: () {
                  print('Notification');
                }),
            CircleAvatar(
              radius: SizeConfig.b * 5,
              backgroundColor: Colors.grey,
            ),
            SizedBox(
              width: SizeConfig.b * 2.77,
            )
          ],
        ),
        extendBody: true,
        body: Stack(
          children: [
            Positioned(
              child: TabBarView(
                children: [
                  Container(
                    width: 400,
                    color: Color(0xffE5E5E5),
                    child: Center(
                      child: Text('Subject'),
                    ),
                  ),
                  Container(
                    width: 400,
                    color: Color(0xffE5E5E5),
                    child: Center(
                      child: Text('Student'),
                    ),
                  ),
                  Container(
                    width: 400,
                    color: Color(0xffE5E5E5),
                    child: Center(
                      child: Text('Time-Table'),
                    ),
                  ),
                  Container(
                    width: 400,

                    // child: Center(
                    //   child: Text('Library'),
                    // ),
                    decoration: BoxDecoration(
                        color: Color(0xffE5E5E5),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/guruleaf_course.png'),
                            scale: 2)),
                  )
                ],
              ),
            ),
            Positioned(
              top: SizeConfig.screenHeight * 0.033,
              left: SizeConfig.screenWidth * 0.21,
              right: SizeConfig.screenWidth * 0.049,
              bottom: SizeConfig.screenHeight * 0.84,
              child: Container(
                width: SizeConfig.screenWidth * 0.73,
                height: SizeConfig.screenHeight * 0.06,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(SizeConfig.screenHeight * 0.10)),
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
            Positioned(
              top: SizeConfig.screenHeight * 0.1250,
              bottom: SizeConfig.screenHeight * 0.753,
              left: SizeConfig.screenWidth * 0.597,
              right: SizeConfig.screenWidth * 0.179,
              child: Container(
                width: SizeConfig.screenWidth * 0.224,
                // height: SizeConfig.screenHeight * 0.04,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: SizeConfig.b * 0.7,
                          blurRadius: SizeConfig.b * 1.5,
                          offset: Offset(0, 2))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(SizeConfig.b * 7)),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: SizeConfig.v * 0.2),
                  child: Row(children: [
                    SizedBox(width: SizeConfig.screenWidth * 0.013),
                    Expanded(
                      child: Container(
                        width: SizeConfig.screenWidth * 0.154,
                        child: TextField(
                          maxLines: 1,
                          //controller: _searchInputController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search books by their name',
                              isDense: true,
                              hintStyle: TextStyle(
                                  fontSize: SizeConfig.screenHeight * 0.02,
                                  color: Color(0xff848484),
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ),
                    Icon(Icons.search, color: Color(0xffF36C24)),
                    SizedBox(width: SizeConfig.screenWidth * 0.011),
                  ]),
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.screenHeight * 0.1250,
              bottom: SizeConfig.screenHeight * 0.753,
              left: SizeConfig.screenWidth * 0.845,
              //right: SizeConfig.screenWidth * 0.050,
              child: InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(SizeConfig.b * 7),
                  child: Container(
                      width: SizeConfig.screenWidth * 0.104,
                      color: Color(0xffF36C24),
                      child: FittedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              width: SizeConfig.screenWidth * 0.015,
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth * 0.005,
                            ),
                            Text(
                              'Add Book',
                              softWrap: true,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig.screenHeight * 0.019),
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth * 0.017,
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
            Positioned(
                top: SizeConfig.screenHeight * 0.20,
                bottom: SizeConfig.screenHeight * 0.70,
                left: SizeConfig.screenWidth * 0.86,
                right: SizeConfig.screenWidth * 0.05,
                child: Text(
                  'Total no. of books : 0',
                  style: TextStyle(
                      fontSize: SizeConfig.screenHeight * 0.02,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff848484)),
                ))
          ],
        ),
        drawer: Container(
          width: SizeConfig.screenWidth * 0.171,
          height: SizeConfig.screenHeight,
          child: Drawer(
              child: VerticalTabs(
                  header: Container(
                      width: SizeConfig.screenWidth * 0.171,
                      height: SizeConfig.screenHeight * 0.13,
                      child: Row(
                        children: [
                          Container(
                            width: SizeConfig.screenWidth * 0.046,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff2E3842),
                                    Color(0xff273f57),
                                    // Color(0xff305275)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                          ),
                          Container(
                            width: SizeConfig.screenWidth * 0.125,
                            color: Colors.white,
                          ),
                        ],
                      )),
                  gradient: LinearGradient(
                      colors: [Color(0xff2E3842), Color(0xff305275)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  tabsWidth: SizeConfig.screenWidth * 0.046,
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
                      'Class 1',
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 0.020,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1c1c1c)),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.017,
                    ),
                    Text(
                      'Class 2',
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 0.020,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1c1c1c)),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.017,
                    ),
                    Text(
                      'Class 3',
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 0.020,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1c1c1c)),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.017,
                    ),
                    Text(
                      'Class 4',
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 0.020,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1c1c1c)),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.017,
                    ),
                    Text(
                      'Class 5',
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 0.020,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1c1c1c)),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.017,
                    ),
                    Text(
                      'Class 6',
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 0.020,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1c1c1c)),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.017,
                    ),
                    Text(
                      'Class 7',
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 0.020,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1c1c1c)),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.017,
                    ),
                    Text(
                      'Class 8',
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 0.020,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1c1c1c)),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.017,
                    ),
                    Text(
                      'Class 9',
                      style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 0.020,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1c1c1c)),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.017,
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
              ])),
        ),
      ),
    );
  }
}
