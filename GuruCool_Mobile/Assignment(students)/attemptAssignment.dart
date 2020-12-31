import 'package:flutter/material.dart';

class AttemptAssignment extends StatelessWidget {
  final int numberOfQ;
  final int marks;
  final int assgnNo;
  final String quesType;

  AttemptAssignment(
      {
      @required this.assgnNo,
      @required this.numberOfQ,
      @required this.marks,
      @required this.quesType});

  Color optionColor = Color(0xffC4C4C4);

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
          'Assignment ${this.assgnNo.toString()}',
          style: TextStyle(
              color: gc,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.screenWidth * 0.05),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.025,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Number of questions : ${this.numberOfQ.toString()}',
                    style: TextStyle(
                        color: Color(0xff305275),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.screenWidth * 0.0389),
                  ),
                  Text(
                    'Marks : ${this.marks.toString()}',
                    style: TextStyle(
                        color: Color(0xff305275),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.screenWidth * 0.0389),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.0277,
                  right: SizeConfig.screenWidth * 0.0277,
                  top: SizeConfig.screenHeight * 0.0156),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.030556,
                vertical: SizeConfig.screenHeight * 0.00625,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(SizeConfig.b * 1.5)),
              child: Text(
                'Description Description Description Description Description Description Description Description',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.screenWidth * 0.0389),
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 0.0277,
                        right: SizeConfig.screenWidth * 0.0277,
                        top: SizeConfig.screenHeight * 0.0156),
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenWidth * 0.0277,
                      vertical: SizeConfig.screenHeight * 0.00625,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(SizeConfig.b * 1.5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${index + 1}. ${this.quesType}',
                          style: TextStyle(
                              fontSize: SizeConfig.screenWidth * 0.0389,
                              color: Color(0xff1C1C1C),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.01875,
                        ),
                        Text(
                          'This is very nice question that no-one will be able to answer and i will conduct fair examination. I will become permanent faculty.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0389,
                            color: Color(0xff1C1C1C),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.01875,
                        ),
                        Column(
                          children: [
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
                                  'Type Option',
                                  style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 0.0389,
                                    color: Color(0xff1C1C1C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 0.011,
                            ),
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
                                  'Type Option',
                                  style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 0.0389,
                                    color: Color(0xff1C1C1C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 0.011,
                            ),
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
                                  'Type Option',
                                  style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 0.0389,
                                    color: Color(0xff1C1C1C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 0.011,
                            ),
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
                                  'Type Option',
                                  style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 0.0389,
                                    color: Color(0xff1C1C1C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 0.011,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
            SizedBox(
              height: SizeConfig.screenHeight * 0.023,
            ),
            MaterialButton(
              onPressed: () {
                print('Add Session');
              },
              color: gc,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(SizeConfig.b * 1.42),
              ),
              elevation: 7,
              minWidth: SizeConfig.screenWidth * 0.444,
              child: Text(
                'Submit',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: SizeConfig.b * 0.0364,
                    fontSize: SizeConfig.b * 3.6),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.023,
            ),
          ],
        ),
      ),
    );
  }
}
