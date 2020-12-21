import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qwe/utils/Colors.dart';
import 'package:qwe/utils/sizeConfig.dart';
import 'package:qwe/utils/bottom.dart';

class VerifyApplication extends StatelessWidget {
  final String content;
  final String date;
  final String senderName;
  final String time;
  final passKey;
  final String titleName;
  VerifyApplication({
    @required this.content,
    @required this.passKey,
    @required this.date,
    @required this.time,
    @required this.titleName,
    @required this.senderName,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: gc,
            ),
            onPressed: () {}),
        title: Transform(
            transform:
                Matrix4.translationValues(-SizeConfig.screenWidth * 0.06, 0, 0),
            child: Text(this.titleName,
                style: TextStyle(
                    color: gc,
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.screenWidth * 0.05))),
      ),
      body: Container(
          color: Color(0xffE5E5E5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.0484375),
              Expanded(
                  child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    SizedBox(
                                        width:
                                            SizeConfig.screenWidth * 0.04167),
                                    Text(this.date,
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.screenWidth * 0.0278,
                                            color: Color(0xff848484),
                                            fontWeight: FontWeight.w400)),
                                    Spacer(),
                                    Text(this.time,
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.screenWidth * 0.0278,
                                            color: Color(0xff848484),
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                        width:
                                            SizeConfig.screenWidth * 0.04167),
                                  ]),
                                  SizedBox(
                                      height:
                                          SizeConfig.screenHeight * 0.02722),
                                  Container(
                                      height:
                                          SizeConfig.screenHeight * 0.078125,
                                      color: Colors.white,
                                      child: Row(children: [
                                        SizedBox(
                                            width: SizeConfig.screenWidth *
                                                0.03611),
                                        CircleAvatar(
                                            radius:
                                                SizeConfig.screenWidth * 0.05,
                                            backgroundColor: Colors.blue),
                                        SizedBox(
                                            width: SizeConfig.screenWidth *
                                                0.04722),
                                        Text(
                                          this.senderName,
                                          style: TextStyle(
                                              fontSize: SizeConfig.screenWidth *
                                                  0.039,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Spacer(),
                                        IconButton(
                                            icon: Icon(Icons.reply,
                                                color: gc,
                                                size: SizeConfig.screenWidth *
                                                    0.055)),
                                        SizedBox(
                                            width:
                                                SizeConfig.screenWidth * 0.02),
                                      ])),
                                  Container(
                                    height: 3,
                                    color: Color(0xffE5E5E5),
                                  ),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              SizeConfig.screenWidth * 0.04722,
                                          vertical: SizeConfig.screenHeight *
                                              0.0265625),
                                      color: Colors.white,
                                      child: Text(
                                          "Dear Nishant,Your application has been approved.  And I have sent your paper   for verification.Your application has been approved. And i have  sent your paper for verification. Your application has been approved. And i have sent your paper for verification. been approved. And i have sent your paper been approved. And i have sent your paper been approved. And i have sent your papebeen approved. And i have  sent your papebeen approved. And i have sent your paper")),
                                  SizedBox(
                                      height:
                                          SizeConfig.screenHeight * 0.0171875),
                                  Container(
                                    height: 0.5,
                                    width: SizeConfig.screenWidth * 0.1389,
                                    color: Color(0xff848484),
                                  ),
                                  SizedBox(
                                      height:
                                          SizeConfig.screenHeight * 0.02222),
                                ]);
                          })))
            ],
          )),
    );
  }
}
