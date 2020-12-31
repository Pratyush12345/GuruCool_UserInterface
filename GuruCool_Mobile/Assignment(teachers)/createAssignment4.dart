import 'package:flutter/material.dart';
import 'package:qwe/createQuestionType.dart';

class CreateAssignment4 extends StatelessWidget {
  final int numberOfQ;
  final int marks;
  final String quesType;
  final String question;

  CreateAssignment4(
      {@required this.numberOfQ,
      @required this.marks,
      @required this.question,
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
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth * 0.027778),
          child: Column(children: [
            SizedBox(height: SizeConfig.screenHeight * 0.01),
            Container(
              width: SizeConfig.screenWidth * 0.888,
              child: Row(children: [
                Text(
                  "Question 2/${this.numberOfQ}",
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
                    borderRadius:
                        BorderRadius.circular(SizeConfig.screenWidth * 0.00556),
                  ),
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
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.0140625),
            CreateQuestionType(), // for editing questions
            SizedBox(height: SizeConfig.screenHeight * 0.01875),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            SizeConfig.screenWidth * 0.01389),
                      ),
                      width: SizeConfig.screenWidth * 0.94,
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.screenWidth * 0.0389,
                          vertical: SizeConfig.screenHeight * 0.00625),
                      child: Column(children: [
                        Row(children: [
                          Text(
                            "${(index + 1).toString()}: ${this.quesType}",
                            style: TextStyle(
                                color: Color(0xff515151),
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.screenWidth * 0.0389),
                          ),
                          Spacer(),
                          Transform(
                            transform: Matrix4.translationValues(
                                SizeConfig.screenWidth * 0.03, 0, 0),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(Icons.edit,
                                  color: Color(0xff305275),
                                  size: SizeConfig.screenWidth * 0.044),
                            ),
                          ),
                          Text(
                            "Edit",
                            style: TextStyle(
                                color: Color(0xff305275),
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.screenWidth * 0.0389),
                          ),
                        ]),
                        Text(
                          this.question,
                          style: TextStyle(
                              color: Color.fromRGBO(28, 28, 28, 0.8),
                              fontWeight: FontWeight.w400,
                              fontSize: SizeConfig.screenWidth * 0.0389),
                        ),
                        SizedBox(height: SizeConfig.screenHeight * 0.01875),
//for questions framed till now
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return Column(children: [
                                Row(
                                  children: [
                                    Container(
                                        width: SizeConfig.screenWidth * 0.044,
                                        height: SizeConfig.screenHeight * 0.026,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: optionColor)),
                                    SizedBox(
                                        width: SizeConfig.screenWidth * 0.0277),
                                    Text(
                                      'Option ${(index + 1).toString()}',
                                      style: TextStyle(
                                        fontSize:
                                            SizeConfig.screenWidth * 0.0389,
                                        color: Color(0xff1C1C1C),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: SizeConfig.screenHeight * 0.011,
                                ),
                              ]);
                            }),
                      ]),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.01875,
                    ),
                  ]);
                }),
          ]),
        ),
      ),
    );
  }
}
