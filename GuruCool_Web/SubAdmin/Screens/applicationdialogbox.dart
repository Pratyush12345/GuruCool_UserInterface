import 'package:flutter_app_subadmin/colors.dart';
import 'package:flutter_app_subadmin/SizeConfig.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_app_student/dialogutils.dart';

dynamic studentDialogBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return StudentDialogBox();
      });
}

class StudentDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Dialog(
      insetPadding: EdgeInsets.only(
          left: SizeConfig.screenWidth * 130 / 1440,
          right: SizeConfig.screenWidth * 100 / 1440,
          top: SizeConfig.screenHeight * 120 / 900,
          bottom: SizeConfig.screenHeight * 120 / 900),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 10 / 1440),
      ),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: SizeConfig.screenHeight * 50 / 900,
            width: SizeConfig.screenWidth * 1210 / 1440,
            color: colorBluePrimary,
            padding: EdgeInsets.only(
                left: SizeConfig.screenWidth * 24 / 1440,
                right: SizeConfig.screenWidth * 18 / 1440,
                top: SizeConfig.screenHeight * 14 / 900,
                bottom: SizeConfig.screenHeight * 9 / 900),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'New Application',
                  style: TextStyle(
                    fontSize: SizeConfig.screenHeight * 20 / 900,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * 1000 / 1440,
                ),
                Icon(
                  Icons.minimize,
                  color: Colors.white,
                  size: SizeConfig.screenHeight * 20 / 900,
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * 20 / 1440,
                ),
                Icon(
                  Icons.close,
                  color: Colors.white,
                  size: SizeConfig.screenHeight * 20 / 900,
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 17 / 900,
          ),
          Container(
            padding: EdgeInsets.only(
                left: SizeConfig.screenWidth * 24 / 1440,
                right: SizeConfig.screenWidth * 35 / 1440),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Replying to : Nishant Singh ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.screenHeight * 20 / 900,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 23 / 900,
                ),
                Container(
                  constraints: BoxConstraints(
                      maxHeight: SizeConfig.screenHeight * 40 / 900),
                  child: TextField(
                    maxLines: null,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      hintText: 'Subject : Subject of the Application',
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        bottom: SizeConfig.screenHeight * 12 / 900,
                      ),
                      hintStyle: TextStyle(
                          color: hintTextColor,
                          fontSize: SizeConfig.screenWidth * 16 / 1440,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037),
                    ),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.screenHeight * 20 / 900,
                        fontWeight: FontWeight.w400,
                        letterSpacing: SizeConfig.b * 0.037),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 18 / 900,
                ),
                Container(
                  constraints: BoxConstraints(
                      minHeight: SizeConfig.screenHeight * 400 / 900,
                      maxHeight: SizeConfig.screenHeight * 400 / 900),
                  child: TextField(
                    //scrollDragController: ScrollDragController(),
                    maxLines: null,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      //focusedBorder: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.white)),
                      //enabled: false,
                      hintText: 'Type Here ....',
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        bottom: SizeConfig.screenHeight * 12 / 900,
                      ),
                      hintStyle: TextStyle(
                          color: hintTextColor,
                          fontSize: SizeConfig.screenWidth * 16 / 1440,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037),
                    ),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.screenHeight * 20 / 900,
                        fontWeight: FontWeight.w400,
                        letterSpacing: SizeConfig.b * 0.037),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: SizeConfig.screenWidth * 150 / 1440,
                      height: SizeConfig.screenHeight * 40 / 900,
                      child: RaisedButton(
                        elevation: 5,
                        onPressed: () {},
                        color: colorOrangePrimary,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Send',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.screenHeight * 18 / 900),
                            ),
                            SizedBox(width: SizeConfig.screenWidth * 10 / 1440),
                            Icon(
                              Icons.send,
                              color: Colors.white,
                              size: SizeConfig.screenHeight * 14 / 900,
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
