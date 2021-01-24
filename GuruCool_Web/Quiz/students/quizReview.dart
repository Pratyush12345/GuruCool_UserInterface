import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_basics/quizwidgets/reviewcontainer.dart';
import 'package:the_basics/SizeConfig.dart';
import 'package:the_basics/students/quizconstants.dart';
import 'package:the_basics/quizwidgets/leftbar.dart';
import 'package:the_basics/quizwidgets/quizButton.dart';

class QuizReview extends StatelessWidget {
  final String marksScored;
  final String name;
  final String timeTaken;

  QuizReview(
      {@required this.marksScored,
      @required this.name,
      @required this.timeTaken});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60 / 900 * SizeConfig.screenHeight,
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
        title: Text(
          'Institute Name',
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
                this.name,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              CircleAvatar(
                backgroundColor: Color(0xffA6CAED),
                radius: 45 / 900 * SizeConfig.screenHeight,
                child: Text(
                  name.substring(0, 1),
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
          // mainAxisSize: MainAxisSize.min,
          children: [
            //
            LeftBar(),
            Container(
              child: Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 120 / 1440,
                          top: SizeConfig.screenHeight * 20 / 900,
                          right: SizeConfig.screenWidth * 120 / 1440),
                      child: Text(
                        'Quiz Review',
                        style: TextStyle(
                          fontSize: SizeConfig.screenHeight * 35 / 900,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffF36C24),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 120 / 1440,
                      ),
                      child: SizedBox(
                        height: SizeConfig.screenHeight * 15 / 900,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 120 / 1440,
                      ),
                      child: Text(
                        'Time Taken : $timeTaken Min',
                        style: TextStyle(
                            fontSize: SizeConfig.screenHeight * 20 / 900),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 120 / 1440,
                          right: SizeConfig.screenWidth * 120 / 1440),
                      height: SizeConfig.screenHeight * 45 / 900,
                      width: SizeConfig.screenWidth * 1100 / 1400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Marks scored : $marksScored',
                            style: TextStyle(
                              fontSize: SizeConfig.screenHeight * 20 / 900,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff305275),
                            ),
                          ),
                          QuizButtons(text: 'Done', onPressed: () {}),
                        ],
                      ),
                    ),
                    ReviewContainer(
                      question: 'daf',
                      questionNumber: '1',
                    ),
                    ReviewContainer(
                      question: 'gseg',
                      questionNumber: '2',
                    ),
                    ReviewContainer(
                      question: 'dgsrg',
                      questionNumber: '3',
                    ),
                    ReviewContainer(
                      question: 'dgerg',
                      questionNumber: '4',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //),
      //     ],
      //   ),
      // ),
    );
  }
}
