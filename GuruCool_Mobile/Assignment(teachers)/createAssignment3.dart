import 'package:flutter/material.dart';
import 'package:qwe/createQuestionType.dart';

class CreateAssignment3 extends StatelessWidget {
  final int numberOfQ;
  final int marks;
  final String quesType;

  CreateAssignment3(
      {@required this.numberOfQ,
      @required this.marks,
      @required this.quesType});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 8,
        titleSpacing: -5,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: gc,
            ),
            onPressed: () {
              print('Back');
            }),
        backgroundColor: Colors.white,
        title: Text(
          'Assignments',
          style: TextStyle(
              color: gc,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.screenWidth * 0.05),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth * 0.05556),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: SizeConfig.screenHeight * 0.01),
            Row(children: [
              Text(
                "Question 1/${this.numberOfQ}",
                style: TextStyle(
                    color: Color(0xff515151),
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.screenWidth * 0.038889),
              ),
              Spacer(),
              MaterialButton(
                onPressed: () {},
                minWidth: SizeConfig.screenWidth * 0.238999,
                height: SizeConfig.screenHeight * 0.046875,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        SizeConfig.screenWidth * 0.00556)),
                color: gc,
                elevation: 0,
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: SizeConfig.screenWidth * 0.039),
                ),
              ),
            ]),
            SizedBox(height: SizeConfig.screenHeight * 0.0234375),
            CreateQuestionType(),
          ]),
        ),
      ),
    );
  }
}
