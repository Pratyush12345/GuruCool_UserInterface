import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qwe/utils/Colors.dart';
import 'package:qwe/utils/sizeConfig.dart';
import 'package:qwe/utils/bottom.dart';

class Application extends StatelessWidget {
  final String subjectTopic;
  final String date;
  final passKey;
  final String titleName;
  Application({
    @required this.subjectTopic,
    @required this.passKey,
    @required this.date,
    @required this.titleName,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: gc,
            ),
            onPressed: () {
              print('Show menu');
            }),
        title: Transform(
            transform:
                Matrix4.translationValues(-SizeConfig.screenWidth * 0.06, 0, 0),
            child: Text(this.titleName,
                style: TextStyle(
                    color: gc,
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.screenWidth * 0.05))),
      ),
      bottomNavigationBar: Bottom(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.mode_edit,
              size: SizeConfig.screenWidth * 0.0486 * 1.5),
          backgroundColor: gc,
          onPressed: () {}),
      body: Container(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.056),
          color: Color(0xffFFFFFF),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.046875),
              Expanded(
                  child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 20,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        Row(children: [
                                          Image.asset('images/bas.png'),
                                          SizedBox(
                                              width: SizeConfig.screenWidth *
                                                  0.0389),
                                          Container(
                                              width:
                                                  SizeConfig.screenWidth * 0.82,
                                              child: Row(children: [
                                                Container(
                                                    width:
                                                        SizeConfig.screenWidth *
                                                            0.65,
                                                    child: Text(
                                                        this.subjectTopic,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            fontSize: SizeConfig
                                                                    .screenWidth *
                                                                0.0389))),
                                                Spacer(),
                                                Text(this.date,
                                                    style: TextStyle(
                                                        fontSize: SizeConfig
                                                                .screenWidth *
                                                            0.0278)),
                                              ]))
                                        ])
                                      ])),
                                  SizedBox(
                                      height: SizeConfig.screenHeight *
                                          0.0203125 /
                                          2),
                                  Divider(
                                      color: Color(0xff515151), thickness: 0.3),
                                  SizedBox(
                                      height: SizeConfig.screenHeight *
                                          0.0203125 /
                                          2),
                                ]);
                          })))
            ],
          )),
    );
  }
}
