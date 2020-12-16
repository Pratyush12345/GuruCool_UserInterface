import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qwe/utils/Colors.dart';
import 'package:qwe/utils/sizeConfig.dart';
import 'package:qwe/utils/bottom.dart';

class ComposeApplication extends StatelessWidget {
  ComposeApplication({
    @required this.subjectTopic,
    @required this.passKey,
    @required this.date,
    @required this.titleName,
  });

  final String date;
  final passKey;
  final String subjectTopic;
  final String titleName;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: gc,
            ),
            onPressed: () {}),
        title: Transform(
            transform:
                Matrix4.translationValues(-SizeConfig.screenWidth * 0.06, 0, 0),
            child: Text(this.titleName,
                style: TextStyle(
                    color: gc,
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.screenWidth * 0.05))),
        actions: [
          IconButton(icon: Icon(Icons.send, color: gc)),
        ],
      ),
      //bottomNavigationBar: Bottom(),
      body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth * 0.04722),
          color: Color(0xffE5E5E5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.028125),
              Text("Application will be sent to Admin",
                  style: TextStyle(
                      color: Color(0xff848484),
                      fontSize: SizeConfig.screenWidth * 0.03333)),
              SizedBox(height: SizeConfig.screenHeight * 0.04444),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 0.0389,
                    vertical: SizeConfig.v * 0.2),
                width: SizeConfig.screenWidth * 0.9056,
                child: TextField(
                  textInputAction: TextInputAction.search,
                  keyboardType: TextInputType.text,
                  maxLines: null,
                  //controller: _searchInputController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Subject',
                      isDense: true,
                      hintStyle: TextStyle(
                          fontSize: SizeConfig.screenWidth * 0.039,
                          color: Color(0xff848484),
                          fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.015625),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 0.0389,
                    vertical: SizeConfig.v * 0.2),
                width: SizeConfig.screenWidth * 0.9056,
                child: TextField(
                  textInputAction: TextInputAction.search,
                  keyboardType: TextInputType.text,
                  maxLines: null,
                  minLines: 20,
                  //controller: _searchInputController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type Here',
                      isDense: true,
                      hintStyle: TextStyle(
                          fontSize: SizeConfig.screenWidth * 0.039,
                          color: Color(0xff848484),
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Spacer(),
              Center(
                  child: MaterialButton(
                onPressed: () {},
                minWidth: SizeConfig.screenWidth * 0.2944,
                height: SizeConfig.screenHeight * 0.045,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(SizeConfig.b * 2.78)),
                color: Color.fromRGBO(81, 81, 81, 0.6),
                elevation: 0,
                child: Text(
                  'Enter Subject',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: SizeConfig.screenWidth * 0.033333),
                ),
              )),
            ],
          )),
    );
  }
}
