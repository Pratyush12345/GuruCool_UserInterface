import 'package:flutter/material.dart';
import 'package:qwe/utils/bottom.dart';

class StudentAssignment extends StatelessWidget {
  final String courseId;
  final passKey;
  final String titleName;
  final String assignmentName;
  final String description;
  final String className;
  final String subjectName;
  final String date;
  final String time;
  final String assignmentStatus;

  StudentAssignment({
    @required this.courseId,
    @required this.passKey,
    @required this.titleName,
    @required this.assignmentName,
    @required this.description,
    @required this.className,
    @required this.subjectName,
    @required this.date,
    @required this.time,
    @required this.assignmentStatus,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            elevation: 8,
            backgroundColor: Colors.white,
            leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: gc,
                ),
                onPressed: () {}),
            title: Transform(
                transform: Matrix4.translationValues(
                    -SizeConfig.screenWidth * 0.06, 0, 0),
                child: Text(this.titleName,
                    style: TextStyle(
                        color: gc,
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.screenWidth * 0.05),
                        ),
                        ),
            bottom: TabBar(
                indicatorColor: gc,
                indicatorWeight: SizeConfig.screenWidth * 0.01111,
                labelPadding: EdgeInsets.zero,
                labelColor: gc,
                unselectedLabelColor: unselect,
                tabs: [
                  Tab(
                    child: Text(
                      'Ongoing',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.b * 4.071,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Previous',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.b * 4.071),
                    ),
                  ),
                ]),
          ),
          bottomNavigationBar: Bottom(),
          floatingActionButton: FloatingActionButton(
            onPressed: () => {},
            child: Icon(
              Icons.add,
              size: SizeConfig.screenWidth * 0.0486 * 1.5,
              color: Colors.white,
            ),
            backgroundColor: gc,
          ),
          body: TabBarView(children: [
            Container(
              color: Color(0xffE5E5E5),
              child: Center(
                child: Text('Subject'),
              ),
            ),
            Container(
                color: Color(0xffE5E5E5),
                child: Column(children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.021875),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Column(children: [
                            Container(
                                height: SizeConfig.screenHeight * 0.140625,
                                width: SizeConfig.screenWidth * 0.9111,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          SizeConfig.screenWidth * 0.02222),
                                      topRight: Radius.circular(
                                          SizeConfig.screenWidth * 0.02222)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset(6.0, 0.0),
                                      spreadRadius: SizeConfig.b * 0.2,
                                      blurRadius: SizeConfig.b * 0.5,
                                    ),
                                  ],
                                ),
                                child: Row(children: [
                                  SizedBox(
                                      width: SizeConfig.screenWidth * 0.05556),
                                  Image.asset('images/assignment.png'),
                                  SizedBox(
                                      width: SizeConfig.screenWidth * 0.03333),
                                  Container(
                                    width: SizeConfig.screenWidth * 0.52,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            this.assignmentName,
                                            style: TextStyle(
                                              color: Color(0xff305275),
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  SizeConfig.screenWidth * 0.05,
                                            ),
                                          ),
                                          Text(this.description,
                                              style: TextStyle(
                                                  color: gc,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize:
                                                      SizeConfig.screenWidth *
                                                          0.0333),
                                                          ),
                                        ]),
                                  ),
                                  Spacer(),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: SizeConfig.screenHeight *
                                                0.03125),
                                        Text(this.date,
                                            style: TextStyle(
                                                color: gc,
                                                fontWeight: FontWeight.w300,
                                                fontSize:
                                                    SizeConfig.screenWidth *
                                                        0.02778)),
                                        Text(this.time,
                                            style: TextStyle(
                                                color: gc,
                                                fontWeight: FontWeight.w300,
                                                fontSize:
                                                    SizeConfig.screenWidth *
                                                        0.02778)),
                                        SizedBox(
                                            height: SizeConfig.screenHeight *
                                                0.0109375),
                                        Container(
                                          height: SizeConfig.screenHeight *
                                              0.015625,
                                          width:
                                              SizeConfig.screenWidth * 0.11111,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                SizeConfig.screenWidth *
                                                    0.0278),
                                            color: this.assignmentStatus ==
                                                    "Completed"
                                                ? Color(0xff67F550)
                                                : Color(0xffF65151),
                                          ),
                                          child: Center(
                                            child: Text(
                                              this.assignmentStatus,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize:
                                                      SizeConfig.screenWidth *
                                                          0.0167),
                                            ),
                                          ),
                                        ),
                                      ]),
                                  SizedBox(
                                      width: SizeConfig.screenWidth * 0.04167),
                                ]),
                                ),
                            Container(
                              height: SizeConfig.screenHeight * 0.046875,
                              width: SizeConfig.screenWidth * 0.9111,
                              decoration: BoxDecoration(
                                color: Color(0xff305275),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        SizeConfig.screenWidth * 0.02222),
                                    bottomRight: Radius.circular(
                                        SizeConfig.screenWidth * 0.02222)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(6.0, 0.0),
                                    spreadRadius: SizeConfig.b * 0.2,
                                    blurRadius: SizeConfig.b * 0.5,
                                  )
                                ],
                              ),
                              child: Row(children: [
                                SizedBox(
                                    width: SizeConfig.screenWidth * 0.047222),
                                Text(this.className,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize:
                                            SizeConfig.screenWidth * 0.0333)),
                                SizedBox(
                                    width:
                                        SizeConfig.screenWidth * 0.047222 / 2),
                                Container(
                                  color: Colors.white,
                                  width: 0.5,
                                  height: SizeConfig.screenWidth * 0.0333,
                                ),
                                SizedBox(
                                    width:
                                        SizeConfig.screenWidth * 0.047222 / 2),
                                Text(this.subjectName,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize:
                                            SizeConfig.screenWidth * 0.0333)),
                                Spacer(),
                                Center(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            SizedBox(
                                height: SizeConfig.screenHeight * 0.021875),
                          ]);
                        },
                      ),
                    ),
                  ),
                ]),
                ),
          ]),
          ),
    );
  }
}
