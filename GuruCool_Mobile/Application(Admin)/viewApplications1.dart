import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:A/utils/color.dart';
import 'dart:math' as math;
void main() {
  runApp(MyApp());
}

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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ViewApplication(
          name: 'Nishant Singh',
          applicationSubject:
              'Subject of the Application Subject of the Application...',
          date: '12/11/20',
        ));
  }
}

class ViewApplication extends StatelessWidget {
  final String name;
  final String applicationSubject;
  final String date;
  ViewApplication({
    @required this.name,
    @required this.applicationSubject,
    @required this.date,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colorsgc().bgColor,
        appBar: AppBar(
          elevation: 10,
          titleSpacing: -5,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colorsgc().gc,
              ),
              onPressed: () {
                print('Back');
              }),
          backgroundColor: Colors.white,
          title: Text(
            '${this.name}',
            style: TextStyle(
                color: Color(0xffF36C24),
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.b * 4.5),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.02),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 0.041),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '23/10/20',
                      style: TextStyle(
                          color: Color(0xff848484), fontSize: SizeConfig.b * 3),
                    ),
                    Text(
                      '01:31 PM',
                      style: TextStyle(
                          color: Color(0xff848484), fontSize: SizeConfig.b * 3),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.015,
              ),
              Container(
                width: SizeConfig.screenWidth,
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.033,
                    top: SizeConfig.screenHeight * 0.008,
                    bottom: SizeConfig.screenHeight * 0.008,
                    right: SizeConfig.screenWidth * 0.055,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(161, 23, 246, 0.8)),
                            child: Text(
                              '${this.name[0]}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.b * 5.3),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.screenWidth * 0.0472,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                this.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: SizeConfig.b * 4),
                              ),
                              Text(
                                'To : Admin',
                                style: TextStyle(
                                    color: Colorsgc().gc,
                                    fontSize: SizeConfig.b * 2.5),
                              )
                            ],
                          )
                        ],
                      ),
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(
                          math.pi),
                        child:IconButton(
                          constraints: BoxConstraints(),
                          padding:EdgeInsets.zero,
                          iconSize: SizeConfig.b*7,
                          color: Colorsgc().gc,
                          icon:Icon(MdiIcons.share,),
                           onPressed: (){})
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
              height:SizeConfig.screenHeight*0.00468 ,
              ),
              Container(
                width: SizeConfig.screenWidth,
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth*0.058,
                  vertical: SizeConfig.screenHeight*0.020,
                ),
                 child: Text(
                  
                   'To, The Principal Delhi Public School Subject: Paper Verification Respected Sir, Kindly verify my maths paper please, kindly Kindly verify my maths paper please, h math  Kindly   verify my maths paper please, Kindly verify hehehhehe my maths paper please Thanking you Yours sincerely Nishant',
                   textAlign: TextAlign.justify,
                   style: TextStyle(
                     fontSize: SizeConfig.b*3.2,
                     color:Color(0xff1C1C1C),
                     fontWeight: FontWeight.w400
                     
                   ),
                 ),
              )
            ],
          ),
        ));
  }
}
