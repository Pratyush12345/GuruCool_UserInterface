import 'package:qwe/utils/sizeConfig.dart';
import 'package:flutter/material.dart';
import '../Colors.dart';

class ShowPdfDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Dialog(
      insetPadding:
          EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.0833),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.02778),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.screenWidth * 0.02778 * 1.7,
            vertical: SizeConfig.screenHeight * 0.0265625,
          ),
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
                    borderSide: BorderSide(
                      color: Color(0xff515151),
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: hintTextColor,
                    fontSize: SizeConfig.screenWidth * 0.0389,
                    fontWeight: FontWeight.w400,
                    letterSpacing: SizeConfig.b * 0.037,
                  ),
                ),
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
                    borderSide: BorderSide(
                      color: Color(0xff515151),
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: hintTextColor,
                    fontSize: SizeConfig.screenWidth * 0.0389,
                    fontWeight: FontWeight.w400,
                    letterSpacing: SizeConfig.b * 0.037,
                  ),
                ),
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
                    bottom: SizeConfig.v,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'PDF Link',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff515151),
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: hintTextColor,
                    fontSize: SizeConfig.screenWidth * 0.0389,
                    fontWeight: FontWeight.w400,
                    letterSpacing: SizeConfig.b * 0.037,
                  ),
                ),
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
                      borderRadius: BorderRadius.circular(
                        SizeConfig.screenWidth * 0.01389,
                      ),
                    ),
                    color: gc,
                    elevation: 5,
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: SizeConfig.screenWidth * 0.0389,
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

void showPdfDialogBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return ShowPdfDialogBox();
      });
}
