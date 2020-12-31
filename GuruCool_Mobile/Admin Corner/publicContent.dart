import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:A/utils/sizeConfig.dart';
import 'package:A/Admin Corner/dialog1.dart';

class PublicContent extends StatelessWidget {
  String title;
  PublicContent({@required this.title});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog1();
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: SizeConfig.screenWidth * 0.068,
        ),
        backgroundColor: Color(0xffF36C24),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.041),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.031,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(
                          bottom: SizeConfig.screenHeight * 0.016),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.017),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: Offset(0, 2),
                                blurRadius: 3)
                          ]),
                      padding: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.021,
                          bottom: SizeConfig.screenHeight * 0.021,
                          left: SizeConfig.screenWidth * 0.0277,
                          right: SizeConfig.screenWidth * 0.041),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                MdiIcons.accountBoxOutline,
                                color: Color(0xffF36C24),
                                size: SizeConfig.screenWidth * 0.067,
                              ),
                              Text(
                                '||',
                                style: TextStyle(
                                    color: Color(0xffF36C24),
                                    fontWeight: FontWeight.bold,
                                    fontSize: SizeConfig.screenWidth * 0.04),
                              ),
                              SizedBox(width: SizeConfig.screenWidth * 0.027),
                              Text(
                                title,
                                style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 0.045),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Ink(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xffF36C24),
                                size: SizeConfig.screenWidth * 0.05,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
