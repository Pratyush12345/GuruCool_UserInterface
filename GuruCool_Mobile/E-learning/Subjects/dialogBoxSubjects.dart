import 'package:qwe/utils/Colors.dart';
import 'package:flutter/material.dart';

class DialogBoxSubject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth * 0.0833,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.01389),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: SizeConfig.screenHeight * 0.0266,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.screenWidth * 0.04722,
          ),
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
                  hintText: 'Subject Name',
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
              Container(
                height: SizeConfig.screenHeight * 0.045,
                width: SizeConfig.screenWidth * 0.73888,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    SizeConfig.screenWidth * 0.01389,
                  ),
                  border: Border.all(
                    color: Color(0xff848484),
                    width: SizeConfig.screenWidth * 0.002,
                  ),
                ),
                padding: EdgeInsets.only(left: SizeConfig.b * 2.6),
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    child: DropdownButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                        size: SizeConfig.screenWidth * 0.07,
                      ),
                      isDense: true,
                      value: 0,
                      items: null,
                      onChanged: null,
                      hint: Text(
                        'Teachers',
                        style: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 0.0389,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037,
                        ),
                      ),
                    ),
                  ),
                ),
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
                        SizeConfig.screenWidth * 0.01389,
                      ),
                    ),
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: SizeConfig.screenWidth * 0.0389,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

void dialogBoxSubject(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogBoxSubject();
      });
}
