//question editing

import 'package:flutter/material.dart';

class CreateQuestionType extends StatelessWidget {
  final int numberOfQ;
  final int marks;
  final int assgnNo;
  final String quesType;

  CreateQuestionType(
      {@required this.assgnNo,
      @required this.numberOfQ,
      @required this.marks,
      @required this.quesType});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: SizeConfig.screenHeight * 0.01),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(SizeConfig.screenWidth * 0.01389),
            ),
            height: SizeConfig.screenHeight * 0.05,
            width: SizeConfig.screenWidth * 0.94,
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.0389,
                vertical: SizeConfig.screenHeight * 0.00625),
            child: Text(
              "Single Correct",
              style: TextStyle(
                  color: Color(0xff515151),
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.screenWidth * 0.0389),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.01875),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(SizeConfig.screenWidth * 0.01389),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.0389,
                vertical: SizeConfig.screenHeight * 0.00625),
            child: TextField(
              decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  hintText: 'Type Question',
                  hintStyle: TextStyle(
                      color: Color(0xff515151),
                      fontSize: SizeConfig.screenWidth * 0.0389,
                      fontWeight: FontWeight.w400,
                      letterSpacing: SizeConfig.b * 0.037)),
              maxLines: null,
              minLines: 6,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.0203125),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(SizeConfig.screenWidth * 0.01389),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.0389,
                vertical: SizeConfig.screenHeight * 0.00625),
            child: Column(children: [
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                    width: SizeConfig.screenWidth * 0.044,
                    height: SizeConfig.screenHeight * 0.026,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffC4C4C4),
                    )),
                SizedBox(width: SizeConfig.screenWidth * 0.0277),
                Container(
                  width: SizeConfig.screenWidth * 0.725,
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        hintText: 'Type Option 1',
                        hintStyle: TextStyle(
                            color: Color(0xff515151),
                            fontSize: SizeConfig.screenWidth * 0.0389,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                    minLines: 1,
                  ),
                ),
              ]),
              Row(children: [
                Container(
                    width: SizeConfig.screenWidth * 0.044,
                    height: SizeConfig.screenHeight * 0.026,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffC4C4C4),
                    )),
                SizedBox(width: SizeConfig.screenWidth * 0.0277),
                Container(
                  width: SizeConfig.screenWidth * 0.725,
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        hintText: 'Type Option 2',
                        hintStyle: TextStyle(
                            color: Color(0xff515151),
                            fontSize: SizeConfig.screenWidth * 0.0389,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                    minLines: 1,
                  ),
                ),
              ]),
              Row(children: [
                Container(
                    width: SizeConfig.screenWidth * 0.044,
                    height: SizeConfig.screenHeight * 0.026,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffC4C4C4),
                    )),
                SizedBox(width: SizeConfig.screenWidth * 0.0277),
                Container(
                  width: SizeConfig.screenWidth * 0.725,
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        hintText: 'Type Option 3',
                        hintStyle: TextStyle(
                            color: Color(0xff515151),
                            fontSize: SizeConfig.screenWidth * 0.0389,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                    minLines: 1,
                  ),
                ),
              ]),
              Row(children: [
                Container(
                    width: SizeConfig.screenWidth * 0.044,
                    height: SizeConfig.screenHeight * 0.026,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffC4C4C4),
                    )),
                SizedBox(width: SizeConfig.screenWidth * 0.0277),
                Container(
                  width: SizeConfig.screenWidth * 0.725,
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'Type Option 4',
                      hintStyle: TextStyle(
                          color: Color(0xff515151),
                          fontSize: SizeConfig.screenWidth * 0.0389,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037),
                    ),
                    maxLines: null,
                    minLines: 1,
                  ),
                ),
              ]),
            ]),
          ),
        ]),
      ),
    );
  }
}
