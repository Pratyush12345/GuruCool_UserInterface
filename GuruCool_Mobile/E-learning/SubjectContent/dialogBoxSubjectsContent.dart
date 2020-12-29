import 'package:qwe/utils/Colors.dart';
import 'package:flutter/material.dart';

class DialogBoxSubjectContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Dialog(
      insetPadding: EdgeInsets.all(SizeConfig.screenWidth * 0.0833),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.01389),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          margin:
              EdgeInsets.symmetric(vertical: SizeConfig.screenHeight * 0.0266),
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth * 0.04722),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(
                      left: SizeConfig.b * 2.6,
                      top: SizeConfig.v,
                      bottom: SizeConfig.v),
                  border: OutlineInputBorder(),
                  hintText: 'Chapter Name',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff515151),
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: Color(0xff848484),
                    fontSize: SizeConfig.screenWidth * 0.0389,
                    fontWeight: FontWeight.w400,
                    letterSpacing: SizeConfig.b * 0.037,
                  ),
                ),
                maxLines: null,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.0265,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    elevation: 5,
                    color: gc,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    minWidth: SizeConfig.screenWidth * 0.25,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          SizeConfig.screenWidth * 0.01389),
                    ),
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: SizeConfig.screenWidth * 0.039,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

void dialogBoxSubjectContent(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogBoxSubjectContent();
      });
}
