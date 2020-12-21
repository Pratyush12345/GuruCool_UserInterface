import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:A/utils/color.dart';
import '../utils/sizeConfig.dart';

void main() {
  runApp( Application(
          name: 'Nishant Singh',
          applicationSubject:
              'Subject of the Application Subject of the Application...',
          date: '12/11/20',
        ));
}



class Application extends StatelessWidget {
  final String name;
  final String applicationSubject;
  final String date;
  Application({
    @required this.name,
    @required this.applicationSubject,
    @required this.date,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        titleSpacing: -5,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colorsgc().gc,
            ),
            onPressed: () {
              print('Back');
            }),
        backgroundColor: Colors.white,
        title: Text(
          'Application',
          style: TextStyle(
              color: Color(0xffF36C24),
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.b * 4.5),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: SizeConfig.b * 1.75,
          unselectedFontSize: SizeConfig.b * 1.75,
          selectedItemColor: Color(0xffF36C24),
          iconSize: SizeConfig.b * 7,
          unselectedItemColor: Color(0xff999999),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_week_rounded), label: 'COURSES'),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.viewGrid), label: 'MODULES'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: 'MY INSTITUTE'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'PROFILE'),
          ]),


      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth * 0.058,
              vertical: SizeConfig.screenHeight * 0.032),
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                      margin: EdgeInsets.only(
                          bottom: SizeConfig.screenHeight * 0.015),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: SizeConfig.screenWidth*0.121,
                                height: SizeConfig.screenHeight*0.0560,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffCCCCCC)),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '${this.name[0]}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: SizeConfig.b * 5.3),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.screenWidth * 0.02,
                              ),
                              Container(
                                width: SizeConfig.screenWidth * 0.48,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${this.name}',
                                      style: TextStyle(
                                          color: Color(0xff1C1C1C),
                                          fontSize: SizeConfig.b * 3.5,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      '${this.applicationSubject}',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: SizeConfig.b * 3,
                                          color: Color(0xff515151)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            '${this.date}',
                            style: TextStyle(
                                fontSize: SizeConfig.b * 3.2,
                                color: Color(0xff515151)),
                          )
                        ],
                      )),
                );
              }),
        ),
      ),
    );
  }
}
