import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_basics/quizwidgets/quizButton.dart';
import 'package:the_basics/students/quizconstants.dart';
import 'package:the_basics/quizwidgets/answerButton.dart';
import 'package:the_basics/SizeConfig.dart';
import 'package:the_basics/students/quizgrid.dart';
import 'package:the_basics/quizwidgets/leftbar.dart';

class QuestionScreen extends StatelessWidget {
  final String currentQuestion;
  final String currentQuestionNumber;
  final String totalNumberOfQuestions;
  final String timeRemaining;
  final String answerDescription;
  final String name;
  final String quizTitle;
  final bool answergiven = true;

  QuestionScreen({
    @required this.currentQuestion,
    @required this.currentQuestionNumber,
    @required this.totalNumberOfQuestions,
    @required this.timeRemaining,
    @required this.answerDescription,
    @required this.name,
    @required this.quizTitle,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
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
            child: IconButton(
              icon: Icon(Icons.school),
              onPressed: () {},
            ),
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
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Container(
          color: Color(0xffE5E5E5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LeftBar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: SizeConfig.screenHeight * 840 / 900,
                    width: SizeConfig.screenWidth * 856 / 1400,
                    color: Color(0xffE5E5E5),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: SizeConfig.screenHeight * 135 / 900,
                          width: SizeConfig.screenWidth * 856 / 1400,
                          child: Center(
                            child: Text(quizTitle,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        SizeConfig.screenHeight * 35 / 900,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ),
                        Text('Subject Name'),
                        Container(
                          margin: EdgeInsets.only(left: 62.0, right: 35.0),
                          height: SizeConfig.screenHeight * 210 / 900,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff305275),
                              //Colors.white,

                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff305275),
                          ),
                          //width: SizeConfig.screenWidth * 757 / 1418,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.screenWidth * 20 / 1418,
                                    top: SizeConfig.screenHeight * 10 / 900),
                                child: Text(
                                  '$currentQuestionNumber/$totalNumberOfQuestions',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    //fontSize: SizeConfig.screenWidth * 0.044,
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  // margin: EdgeInsets.only(
                                  //     left: SizeConfig.screenWidth * 0.1056,
                                  //     right: SizeConfig.screenWidth * 0.1056,
                                  //     top: SizeConfig.screenWidth * 0.13125,
                                  //     bottom: SizeConfig.screenWidth * 0.03125),
                                  child: Text(
                                    currentQuestion,
                                    style: TextStyle(
                                      color: Colors.white,
                                      // fontSize: SizeConfig.screenWidth * 0.0444,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        AnswerButton(
                          text: 'Answer 1',
                          buttonColor: disabledColor,
                          textColor: disabledTextColor,
                          leftmargin: SizeConfig.screenWidth * 62 / 1418,
                          rightmargin: SizeConfig.screenWidth * 35 / 1418,
                          topmargin: SizeConfig.screenHeight * 30 / 900,
                        ),
                        AnswerButton(
                          text: 'Answer 2',
                          buttonColor: incorrectAnswerColor,
                          textColor: textColor,
                          leftmargin: SizeConfig.screenWidth * 62 / 1418,
                          rightmargin: SizeConfig.screenWidth * 35 / 1418,
                          topmargin: SizeConfig.screenHeight * 13 / 900,
                        ),
                        AnswerButton(
                          text: 'Answer 3',
                          buttonColor: correctAnswerColor,
                          textColor: textColor,
                          leftmargin: SizeConfig.screenWidth * 62 / 1418,
                          rightmargin: SizeConfig.screenWidth * 35 / 1418,
                          topmargin: SizeConfig.screenHeight * 13 / 900,
                        ),
                        AnswerButton(
                          text: 'Answer 4',
                          buttonColor: disabledColor,
                          textColor: disabledTextColor,
                          leftmargin: SizeConfig.screenWidth * 62 / 1418,
                          rightmargin: SizeConfig.screenWidth * 35 / 1418,
                          topmargin: SizeConfig.screenHeight * 13 / 900,
                        ),
                        SizedBox(height: SizeConfig.screenHeight * 30 / 900),
                        // Expanded(
                        //   child:
                        Expanded(
                          child: Container(
                            width: SizeConfig.screenWidth * 821 / 1440,
                            // alignment: Alignment.bottomRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                QuizButtons(
                                  text: totalNumberOfQuestions ==
                                          currentQuestionNumber
                                      ? 'Finish'
                                      : 'Next',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        // ),
                        answergiven == true
                            ? Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      // Color(0xffBABABA),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  width: SizeConfig.screenWidth * 759 / 1440,
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 62 / 1440,
                                      right:
                                          SizeConfig.screenWidth * 35 / 1440),
                                  //color: Colors.white,
                                  child: Text(
                                    answerDescription,
                                    style: TextStyle(
                                      color: Color(0xff305275),
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
              QuizGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
