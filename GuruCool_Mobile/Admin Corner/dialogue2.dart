import 'package:A/Admin%20Corner/Notice.dart';
import 'package:flutter/material.dart';
import 'package:A/utils/sizeConfig.dart';

class Dialogue2 extends StatelessWidget {
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
              Row(
                children: [
                  Expanded(
                      child: DropdownButton(
                          isExpanded: true,
                          hint: Text('Youtube Video'),
                          items: null,
                          onChanged: null))
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.021,
              ),
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(
                      left: SizeConfig.b * 2.6,
                      top: SizeConfig.v,
                      bottom: SizeConfig.v),
                  border: OutlineInputBorder(),
                  hintText: 'Title',
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
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(
                      left: SizeConfig.b * 2.6,
                      top: SizeConfig.v,
                      bottom: SizeConfig.v),
                  border: OutlineInputBorder(),
                  hintText: 'Description',
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
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(
                      left: SizeConfig.b * 2.6,
                      top: SizeConfig.v,
                      bottom: SizeConfig.v),
                  border: OutlineInputBorder(),
                  hintText: 'link',
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
                    color: Color(0xffF36C24),
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
