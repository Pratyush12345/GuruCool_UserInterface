import 'package:flutter/material.dart';
import 'package:the_basics/quizwidgets/reviewoptions.dart';
import '../SizeConfig.dart';

class ReviewContainer extends StatelessWidget {
  final String question;
  final String questionNumber;

  ReviewContainer({
    @required this.question,
    @required this.questionNumber,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          // Color(0xffBABABA),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(
          bottom: SizeConfig.screenHeight * 0.01875,
          left: SizeConfig.screenWidth * 120 / 1440,
          right: SizeConfig.screenWidth * 120 / 1440),
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth * 35 / 1440,
          vertical: SizeConfig.screenHeight * 10 / 900),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1. Description of the quiz the quiz Description of the quiz the quiz Description of the quiz the quiz',
            style: TextStyle(
              fontSize: SizeConfig.screenHeight * 18 / 900,
              color: Color(0xff305275),
              fontWeight: FontWeight.w400,
            ),
          ),
          ReviewOptions(
              text: 'Answer 1',
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Color(0xff305275),
                size: SizeConfig.screenHeight * 17 / 900,
              )),
          ReviewOptions(
            text: 'Answer 2',
            icon: Icon(
              Icons.cancel,
              color: Colors.red,
              size: SizeConfig.screenHeight * 17 / 900,
            ),
          ),
          ReviewOptions(
            text: 'Answer 3',
            icon: Icon(
              Icons.check_circle,
              color: Colors.green,
              size: SizeConfig.screenHeight * 17 / 900,
            ),
          ),
          ReviewOptions(
              text: 'Answer 4',
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Color(0xff305275),
                size: SizeConfig.screenHeight * 17 / 900,
              )),
          SizedBox(height: SizeConfig.screenHeight * 15 / 900),
          Text(
            'Description Description Description Description Description Description Description Description',
            style: TextStyle(
              fontSize: SizeConfig.screenHeight * 18 / 900,
              color: Color(0xff305275),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
