import 'package:flutter/material.dart';
import 'package:the_basics/quizwidgets/quizButton.dart';
import 'package:the_basics/SizeConfig.dart';
import 'package:the_basics/students/quizconstants.dart';
import 'package:the_basics/quizwidgets/leftbar.dart';
import 'package:the_basics/quizwidgets/bullets.dart';
//import 'package:the_basics/quizwidgets/quizButton.dart';
//import 'package:the_basics/quizwidgets/appbar.dart';

class QuizResult extends StatelessWidget {
  final String quizTitle;
  final String timeTaken;
  final String marksScored;
  final String maxMarks;
  final String instituteName;
  final String studentName;
  // final String maxMarks;
  final String numberOfQuestions;
  final String quizTime;

  QuizResult({
    @required this.quizTitle,
    @required this.marksScored,
    @required this.maxMarks,
    @required this.instituteName,
    @required this.studentName,
    //@required this.maxMarks,
    @required this.numberOfQuestions,
    @required this.quizTime,
    @required this.timeTaken,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
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
      body: Center(
        child: Container(
          color: Color(0xffE5E5E5),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LeftBar(),
              Container(
                height: SizeConfig.screenHeight * 840 / 900,
                width: SizeConfig.screenWidth * 730 / 1440,
                padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 110 / 1440,
                    top: SizeConfig.screenHeight * 135 / 900),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      quizTitle,
                      style: TextStyle(
                          color: Color(0xffF36C24),
                          //colorBlueText,
                          fontSize: SizeConfig.screenHeight * 40 / 900,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 30 / 900),
                    Container(
                      width: SizeConfig.screenWidth * 380 / 1440,
                      //margin: EdgeInsets.symmetric(
                      // horizontal: SizeConfig.screenWidth * 0.056),
                      child: Text(
                        'quizDescriptionquizDescriptionquizDescriptionquizDescriptionquizDescriptionquizDescriptionquizDescription',
                        style: TextStyle(
                            color: Colors.black,
                            // colorBlueText,
                            fontSize: SizeConfig.screenHeight * 16 / 900,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 60 / 900),
                    Bullets(
                      text: numberOfQuestions,
                      type: 'Questions',
                    ),
                    Bullets(text: maxMarks, type: 'Marks'),
                    Bullets(text: quizTime, type: 'Minutes'),

                    SizedBox(height: SizeConfig.screenHeight * 30 / 900),
                    // Container(
                    //   child: Image.asset('images/quiz_result.png'),
                    // ),
                    //SizedBox(height: SizeConfig.screenHeight * 0.03125 * 3),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Your Score'),
                            SizedBox(
                              height: 13.0,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  marksScored,
                                  style: TextStyle(
                                    color: Color(0xffF36C24),
                                    fontSize:
                                        SizeConfig.screenHeight * 30 / 900,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13.0,
                            ),
                            Text('Out of $maxMarks'),
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth * 150 / 1400,
                        ),
                        Column(
                          children: [
                            Text('Time'),
                            SizedBox(
                              height: 13.0,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  timeTaken,
                                  style: TextStyle(
                                    color: Color(0xffF36C24),
                                    fontSize:
                                        SizeConfig.screenHeight * 30 / 900,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13.0,
                            ),
                            Text('Out of $quizTime Min'),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: SizeConfig.screenHeight * 50 / 900),
                    Container(
                      child: Row(
                        children: [
                          QuizButtons(
                            text: 'Review',
                            onPressed: () {
//TODO: Add required responsiveness
                            },
                          ),
                          SizedBox(width: SizeConfig.screenWidth * 60 / 1440),
                          QuizButtons(
                            text: 'Done',
                            onPressed: () {
//TODO: Add required responsiveness
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'images/quiz_result.png',
                      height: SizeConfig.screenHeight * 500 / 900,
                      width: SizeConfig.screenWidth * 500 / 1440,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
