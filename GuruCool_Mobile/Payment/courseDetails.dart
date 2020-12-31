import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class CourseDetails extends StatelessWidget {
  final String courseName;
  final String classNo;
  final String description;

  CourseDetails(
      {@required this.courseName,
      @required this.classNo,
      @required this.description});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: SizeConfig.screenHeight * 0.5125,
                  width: SizeConfig.screenWidth,
                  color: Colors.grey,
//child:Image.asset('images/pre.png',height:SizeConfig.screenHeight * 0.5125,width: SizeConfig.screenWidth,),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenWidth * 0.036,
                      vertical: SizeConfig.screenHeight * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.01,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: SizeConfig.screenWidth * 0.05,
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.screenWidth * 0.04,
                          ),
                          Text(
                            this.courseName,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 0.05),
                          ),
                        ],
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.034),
                      Text(
                        'Class ${this.classNo}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.screenWidth * 0.08333,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'New',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: SizeConfig.screenWidth * 0.027778,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.059375,
                      ),
                      Container(
                        width: SizeConfig.screenWidth * 0.8,
                        child: Column(
                          children: [
                            Text(
                              'Course description Course description Course description Course description Course description Course description Course description Course description Course description Course description Course description Course description Course description',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: SizeConfig.screenWidth * 0.03333,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: SizeConfig.screenHeight * 0.45,
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.05277778,
                vertical: SizeConfig.screenHeight * 0.0234375,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'This Course Includes : ',
                    style:
                        TextStyle(fontSize: SizeConfig.screenWidth * 0.038889),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.0275,
                  ),
                  Row(
                    children: [
                      Icon(
                        MdiIcons.youtube,
                        size: SizeConfig.screenWidth * 0.05,
                        color: gc,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth * 0.061111,
                      ),
                      Text(
                        '24 Hours On-Demand Video Lectures',
                        style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0389),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        MdiIcons.clock,
                        size: SizeConfig.screenWidth * 0.05,
                        color: gc,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth * 0.061111,
                      ),
                      Text(
                        'Quizzes and Pdf Notes',
                        style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0389),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        MdiIcons.mapMarker,
                        size: SizeConfig.screenWidth * 0.05,
                        color: gc,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth * 0.061111,
                      ),
                      Text(
                        'Access From Anywhere',
                        style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0389),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.book,
                        size: SizeConfig.screenWidth * 0.05,
                        color: gc,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth * 0.061111,
                      ),
                      Text(
                        'Pre-available book libraries',
                        style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0389),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        MdiIcons.youtube,
                        size: SizeConfig.screenWidth * 0.05,
                        color: gc,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth * 0.061111,
                      ),
                      Text(
                        'Assignments',
                        style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0389),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          print('Add Session');
                        },
                        color: gc,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.01389),
                        ),
                        elevation: 5,
                        minWidth: SizeConfig.screenWidth * 0.444,
                        child: Text(
                          'Enroll Now',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: SizeConfig.b * 0.0364,
                            fontSize: SizeConfig.screenWidth * 0.0389,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
