import 'package:flutter/material.dart';

class OtherPageDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig()..init(context);
    return Dialog(
      insetPadding:
          EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.0833),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          SizeConfig.screenWidth * 0.02778 / 2,
        ),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.0556,
                  vertical: SizeConfig.screenHeight * 0.0234375,
                ),
                child: Text(
                  'Are you sure you want to go to other page without saving ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.0389,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.015625,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: SizeConfig.screenHeight * 34 / 640,
                      width: SizeConfig.screenWidth * 150 / 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft:
                              Radius.circular(SizeConfig.screenWidth * 5 / 360),
                        ),
                        color: gc,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: SizeConfig.screenWidth * 0.0333,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: SizeConfig.screenHeight * 34 / 640,
                      width: SizeConfig.screenWidth * 150 / 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight:
                              Radius.circular(SizeConfig.screenWidth * 5 / 360),
                        ),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'No',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 0.0333,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}

void showOtherPageDialogBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return OtherPageDialogBox();
      });
}
