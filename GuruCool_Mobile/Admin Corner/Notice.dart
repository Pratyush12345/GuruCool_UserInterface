import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:A/utils/sizeConfig.dart';

class Notice extends StatelessWidget {
  String description;
  String date;
  String time;

  Notice(
      {@required this.date, @required this.time, @required this.description});

  @override
  Widget build(BuildContext context) {
    SizeConfig()..init(context);
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight * 10 / 640,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: SizeConfig.screenWidth * 15 / 360,
                          vertical: SizeConfig.screenHeight * 8 / 640,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.016,
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: Offset(0, 2),
                                blurRadius: 4,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.screenWidth * 0.019,
                                vertical: SizeConfig.screenHeight * 0.00625,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff305275),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    SizeConfig.screenWidth * 0.016,
                                  ),
                                  topRight: Radius.circular(
                                    SizeConfig.screenWidth * 0.016,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    date,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: SizeConfig.screenWidth * 0.033,
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 0.011,
                                  ),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 0.011,
                                  ),
                                  Text(
                                    time,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize:
                                            SizeConfig.screenWidth * 0.033),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              constraints: BoxConstraints(
                                minHeight: SizeConfig.screenHeight * 0.092,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.screenWidth * 0.0194,
                                  vertical: SizeConfig.screenHeight * 0.0078),
                              child: Text(
                                description,
                                style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.038,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: SizeConfig.screenHeight * 15.5 / 640,
                left: SizeConfig.screenWidth * 16 / 360,
              ),
              child: Row(
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 277 / 360,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff848484),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        SizeConfig.screenWidth * 0.08,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.screenWidth * 0.0556 / 2,
                          vertical: SizeConfig.screenHeight * 0),
                      child: Row(children: [
                        SizedBox(width: SizeConfig.screenWidth * 10 / 360),
                        Flexible(
                          child: TextField(
                            minLines: 1,
                            maxLines: 5,
                            style: TextStyle(
                              fontSize: SizeConfig.screenWidth * 14 / 360,
                              color: Color(0xff1c1c1c),
                              fontWeight: FontWeight.w400,
                            ),
                            //controller: _searchInputController,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              hintText: 'Type here',
                              hintStyle: TextStyle(
                                fontSize: SizeConfig.screenWidth * 16 / 360,
                                color: Color(0xff848484),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.photo,
                            color: Color(0xff848484),
                            size: SizeConfig.screenWidth * 22 / 360,
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth * 0.01),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.play_circle_fill,
                            color: Color(0xff848484),
                            size: SizeConfig.screenWidth * 22 / 360,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth * 0.02777778 * 1.1),
                  Transform.scale(
                    scale: 0.8,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.send,
                        size: SizeConfig.screenWidth * 0.079,
                      ),
                      backgroundColor: Color(0xffF36C24),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
