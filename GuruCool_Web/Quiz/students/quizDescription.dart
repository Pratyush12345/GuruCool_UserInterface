import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_basics/students/quizconstants.dart';
import 'package:the_basics/quizwidgets/bullets.dart';
import 'package:the_basics/quizwidgets/quizButton.dart';
import 'package:the_basics/SizeConfig.dart';
import 'package:the_basics/quizwidgets/leftbar.dart';

class QuizDescription extends StatelessWidget {
  final String quizTitle;
  final String quizDescription;
  final String maxMarks;
  final String numberOfQuestions;
  final String quizTime;
  final String studentName;
  final String instituteName;

  QuizDescription({
    @required this.quizTitle,
    @required this.quizDescription,
    @required this.maxMarks,
    @required this.numberOfQuestions,
    @required this.quizTime,
    @required this.studentName,
    @required this.instituteName,
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
            children: [
              LeftBar(),
              Container(
                height: SizeConfig.screenHeight * 840 / 900,
                width: SizeConfig.screenWidth * 700 / 1440,
                padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 135 / 1440,
                    top: SizeConfig.screenHeight * 135 / 900),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //SizedBox(height: SizeConfig.screenHeight * 0.0328125),
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
                    SizedBox(height: SizeConfig.screenHeight * 135 / 900),
                    QuizButtons(
                      text: 'Start Attempt',
                      onPressed: () {
//TODO: Add required responsiveness
                      },
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'images/question_mark.png',
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
