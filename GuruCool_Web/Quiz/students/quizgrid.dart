import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_basics/SizeConfig.dart';
import 'package:the_basics/quizwidgets/gridtext.dart';
import 'package:the_basics/quizwidgets/quizButton.dart';
import 'package:the_basics/students/quizconstants.dart';

class QuizGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Expanded(
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(
            top: SizeConfig.screenHeight * 25 / 900,
            bottom: SizeConfig.screenHeight * 15 / 900,
            left: SizeConfig.screenWidth * 35 / 1440,
            right: SizeConfig.screenWidth * 15 / 1440),
        padding: //EdgeInsets.symmetric(
            //     horizontal: SizeConfig.screenHeight * 25 / 900),
            EdgeInsets.only(
                top: SizeConfig.screenHeight * 25 / 900,
                bottom: SizeConfig.screenHeight * 15 / 900,
                left: SizeConfig.screenWidth * 20 / 1440,
                right: SizeConfig.screenWidth * 20 / 1440),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            // Color(0xffBABABA),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: SizeConfig.screenHeight * 20 / 900),
            GridText(
                text: 'Time Remaining',
                type: '12:34 min',
                size: SizeConfig.screenHeight * 25 / 900,
                weight: FontWeight.w700,
                color: Color(0xff445261)),
            SizedBox(
              height: SizeConfig.screenHeight * 100 / 900,
            ),
            GridText(
                text: 'Total Questions',
                type: '20',
                size: SizeConfig.screenHeight * 19 / 900,
                weight: FontWeight.w500,
                color: Colors.black),
            SizedBox(
              height: SizeConfig.screenHeight * 10 / 900,
            ),
            GridText(
                text: 'Answered',
                type: '5',
                size: SizeConfig.screenHeight * 19 / 900,
                weight: FontWeight.w500,
                color: Colors.black),
            SizedBox(
              height: SizeConfig.screenHeight * 10 / 900,
            ),
            GridText(
                text: 'NotAnswered',
                type: '15',
                size: SizeConfig.screenHeight * 19 / 900,
                weight: FontWeight.w500,
                color: Colors.black),
            SizedBox(
              height: SizeConfig.screenHeight * 30 / 900,
            ),
            Container(
              child: Expanded(
                child: GridView.builder(
                  //shrinkWrap: true,
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: SizeConfig.screenHeight * 80 / 900,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                  ),
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      // shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Color(0xffBABABA),
                        width: 1.0,
                      ),
                    ),
                    color: (index == 1) ? quizGridCorrect : quiZGridIncorrect,
                    //Color(0xffD8D8D8),
                    child: TextButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '${index + 1}',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      )),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [QuizButtons(text: 'Submit', onPressed: () {})],
            ),
          ],
        ),
      ),
    );
  }
}
