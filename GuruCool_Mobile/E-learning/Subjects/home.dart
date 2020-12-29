import 'package:qwe/Subjects/dialogBoxSubjects.dart';
import 'package:flutter/material.dart';
import 'package:qwe/utils/Colors.dart';
import 'package:qwe/Subjects/subject.dart';
import 'package:qwe/utils/bottom.dart';


class Home extends StatelessWidget {
  final String courseId;
  final passKey;
  final String schoolName;
  final String imgCollegeUrl;
  Home({
    this.courseId,
    this.passKey,
    @required this.schoolName,
    this.imgCollegeUrl,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 4,
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
                child: Text(this.schoolName,
                    style: TextStyle(
                        color: gc,
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.screenWidth * 0.05,),),),
            actions: [
              Row(children: [
                IconButton(
                    icon: Icon(Icons.notifications_none, color: gc),
                    onPressed: () {}),
                CircleAvatar(
                    backgroundColor: Color(0xffA4A4A4),
//backgroundImage: (),
                    radius:SizeConfig.screenWidth*0.0862/2,), //to pass the imageUrl
                SizedBox(width: SizeConfig.screenWidth*0.025,),
              ]),
            ],
            bottom: TabBar(
                indicatorColor: gc,
                labelPadding: EdgeInsets.zero,
                labelColor: gc,
                indicatorWeight: SizeConfig.screenWidth*0.01111,
                unselectedLabelColor: unselect,
                tabs: [
                  Tab(
                    child: Text(
                      'Subject',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.screenWidth*0.0444,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Student',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.screenWidth*0.044,
                          ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Time-Table',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.screenWidth*0.0444,
                          ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Library',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.screenWidth*0.0444,
                          ),
                    ),
                  ),
                ]
                ),
          ),
          bottomNavigationBar: Bottom(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              dialogBoxSubject(context);
              print('pressed!');
            },
            child: Icon(
              Icons.add,
              size:SizeConfig.screenWidth*0.0486*1.5,
              color: Colors.white,
            ),
            backgroundColor: gc,
          ),
          body: TabBarView(children: [
            Subject(
                sub:"Mathematics",
                teacher:"Nikhil Vyas",
                ), //passing parameters of subject list and teacher lists
            Container(
              color: Color(0xffE5E5E5),
              child: Center(
                child: Text('Subject'),
              ),
            ),
            Container(
              color: Color(0xffE5E5E5),
              child: Center(
                child: Text('Student'),
              ),
            ),
            Container(
              color: Color(0xffE5E5E5),
              child: Center(
                child: Text('Time-Table'),
              ),
            ),
          ]
          ),
          ),
    );
  }
}
