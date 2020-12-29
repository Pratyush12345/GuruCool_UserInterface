import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qwe/utils/Colors.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SizeConfig {
  MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double b;
  static double v;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    b = (screenWidth - _safeAreaHorizontal) / 100;
    v = (screenHeight - _safeAreaVertical) / 100;
  }
}

class Dial extends StatefulWidget {
  @override
  _Dial createState() => _Dial();
}

class _Dial extends State<Dial> {
  ScrollController scrollController;
  bool dialVisible = true;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        setDialVisible(scrollController.position.userScrollDirection ==
            ScrollDirection.forward);
      });
  }

  void setDialVisible(bool value) {
    setState(() {
      dialVisible = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SpeedDial(
      backgroundColor: gc,
      animatedIcon: AnimatedIcons.add_event,
      animatedIconTheme: IconThemeData(size: SizeConfig.screenWidth * 0.08),
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      visible: dialVisible,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(MdiIcons.youtube,
                color: Colors.white, size: SizeConfig.screenWidth * 0.045),
            Text("Video", style: TextStyle(fontSize: 6)),
          ]),
          backgroundColor: rc,
          onTap: () => showVideoDialogueBox(context),
        ),
        SpeedDialChild(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.picture_as_pdf,
                color: Colors.white, size: SizeConfig.screenWidth * 0.045),
            Text("Content", style: TextStyle(fontSize: 6)),
          ]),
          backgroundColor: bt,
          onTap: () => showVideoDialogueBox(context),
        ),
        SpeedDialChild(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(MdiIcons.clock,
                color: Colors.white, size: SizeConfig.screenWidth * 0.045),
            Text("Quiz", style: TextStyle(fontSize: 6)),
          ]),
          backgroundColor: gc,
          onTap: () => showQuizDialogueBox(context),
        ),
      ],
    );
  }
}

void showVideoDialogueBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.all(SizeConfig.screenWidth * 0.0833),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.b * 2),
          ),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              padding: EdgeInsets.all(SizeConfig.b * 4.722),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                          left: SizeConfig.b * 2.6,
                          top: SizeConfig.v * 0.7816,
                          bottom: SizeConfig.v * 0.93,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Video title',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff515151))),
                        hintStyle: TextStyle(
                            color: hintTextColor,
                            fontSize: SizeConfig.b * 3.95,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.026,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                          left: SizeConfig.b * 2.6,
                          top: SizeConfig.v * 0.7816,
                          bottom: SizeConfig.v * 0.93,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Video description',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff515151))),
                        hintStyle: TextStyle(
                            color: hintTextColor,
                            fontSize: SizeConfig.b * 3.95,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.026,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                            left: SizeConfig.b * 2.6,
                            top: SizeConfig.v,
                            bottom: SizeConfig.v),
                        border: OutlineInputBorder(),
                        hintText: 'Video Link',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff515151))),
                        hintStyle: TextStyle(
                            color: hintTextColor,
                            fontSize: SizeConfig.b * 3.95,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        minWidth: SizeConfig.screenWidth * 0.25,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(SizeConfig.b * 1.4)),
                        color: gc,
                        elevation: SizeConfig.b * 2,
                        child: Text(
                          'Add',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: SizeConfig.b * 3.5),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        );
      });
}

void showPdfDialogueBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            insetPadding: EdgeInsets.all(SizeConfig.screenWidth * 0.0833),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizeConfig.b * 1.5),
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.b * 4.722,
                    vertical: SizeConfig.screenHeight * 0.0265625),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                            left: SizeConfig.b * 2.6,
                            top: SizeConfig.v * 0.7816,
                            bottom: SizeConfig.v * 0.93,
                          ),
                          border: OutlineInputBorder(),
                          hintText: 'PDF title',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff515151))),
                          hintStyle: TextStyle(
                              color: hintTextColor,
                              fontSize: SizeConfig.b * 3.95,
                              fontWeight: FontWeight.w400,
                              letterSpacing: SizeConfig.b * 0.037)),
                      maxLines: null,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.026,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                            left: SizeConfig.b * 2.6,
                            top: SizeConfig.v * 0.7816,
                            bottom: SizeConfig.v * 0.93,
                          ),
                          border: OutlineInputBorder(),
                          hintText: 'PDF description',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff515151))),
                          hintStyle: TextStyle(
                              color: hintTextColor,
                              fontSize: SizeConfig.b * 3.95,
                              fontWeight: FontWeight.w400,
                              letterSpacing: SizeConfig.b * 0.037)),
                      maxLines: null,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.026,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                              left: SizeConfig.b * 2.6,
                              top: SizeConfig.v,
                              bottom: SizeConfig.v),
                          border: OutlineInputBorder(),
                          hintText: 'PDF Link',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff515151))),
                          hintStyle: TextStyle(
                              color: hintTextColor,
                              fontSize: SizeConfig.b * 3.95,
                              fontWeight: FontWeight.w400,
                              letterSpacing: SizeConfig.b * 0.037)),
                      maxLines: null,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          minWidth: SizeConfig.screenWidth * 0.25,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(SizeConfig.b * 1.4)),
                          color: gc,
                          elevation: SizeConfig.b * 2,
                          child: Text(
                            'Add',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: SizeConfig.b * 3.5),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]));
      });
}

void showQuizDialogueBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.0833),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.b * 2),
          ),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              padding: EdgeInsets.all(SizeConfig.b * 4.722),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                          left: SizeConfig.b * 2.6,
                          top: SizeConfig.v * 0.7816,
                          bottom: SizeConfig.v * 0.93,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Quiz title',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff515151))),
                        hintStyle: TextStyle(
                            color: hintTextColor,
                            fontSize: SizeConfig.b * 3.95,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.026),
                  TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                          left: SizeConfig.b * 2.6,
                          top: SizeConfig.v * 0.7816,
                          bottom: SizeConfig.v * 0.93,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Quiz description',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff515151))),
                        hintStyle: TextStyle(
                            color: hintTextColor,
                            fontSize: SizeConfig.b * 3.95,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.026),
                  TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                          left: SizeConfig.b * 2.6,
                          top: SizeConfig.v * 0.7816,
                          bottom: SizeConfig.v * 0.93,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'No. of questions',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff515151))),
                        hintStyle: TextStyle(
                            color: hintTextColor,
                            fontSize: SizeConfig.b * 3.95,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.026,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                          left: SizeConfig.b * 2.6,
                          top: SizeConfig.v * 0.7816,
                          bottom: SizeConfig.v * 0.93,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Total marks',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff515151))),
                        hintStyle: TextStyle(
                            color: hintTextColor,
                            fontSize: SizeConfig.b * 3.95,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.026,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                            left: SizeConfig.b * 2.6,
                            top: SizeConfig.v,
                            bottom: SizeConfig.v),
                        border: OutlineInputBorder(),
                        hintText: 'Quiz duration',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff515151))),
                        hintStyle: TextStyle(
                            color: hintTextColor,
                            fontSize: SizeConfig.b * 3.95,
                            fontWeight: FontWeight.w400,
                            letterSpacing: SizeConfig.b * 0.037)),
                    maxLines: null,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        minWidth: SizeConfig.screenWidth * 0.25,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(SizeConfig.b * 1.4)),
                        color: gc,
                        elevation: SizeConfig.b * 2,
                        child: Text(
                          'Add',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: SizeConfig.b * 3.5),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        );
      });
}
