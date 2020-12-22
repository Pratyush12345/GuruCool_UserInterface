import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EmptyLibrary extends StatelessWidget {
  TextEditingController _searchInputController = new TextEditingController();
  final String schoolName;

  EmptyLibrary({@required this.schoolName});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            titleSpacing: -5,
            leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Color(0xffF36C24),
                ),
                onPressed: () {
                  print('Show menu');
                }),
            title: Text(
              schoolName,
              style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.05,
                  color: Color(0xffF36C24),
                  fontWeight: FontWeight.w400),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    color: Color(0xffF36C24),
                  ),
                  onPressed: () {
                    print('Notification');
                  }),
              CircleAvatar(
                radius: SizeConfig.b * 5,
                backgroundColor: Colors.grey,
              ),
              SizedBox(
                width: SizeConfig.b * 2.77,
              )
            ],
            bottom: TabBar(
              indicatorWeight: SizeConfig.v*0.56,
                indicatorColor: Color(0xffF36C24),
                labelPadding: EdgeInsets.zero,
                labelColor: Color(0xffF36C24),
                unselectedLabelColor: Color(0xff858A8F),
                tabs: [
                  Tab(
                    child: Text(
                      'Subject',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.b * 3.8,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Student',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.b * 3.8),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Time-Table',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.b * 3.8),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Library',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.b * 3.8),
                    ),
                  ),
                ]),
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
          floatingActionButton: FloatingActionButton(
            onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                      insetPadding:
                          EdgeInsets.all(SizeConfig.screenWidth * 0.0833),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(SizeConfig.b * 2),
                      ),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: SizeConfig.screenHeight * 0.0266),
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
                                    labelText: 'Title',
                                    focusColor: Color(0xff848484),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff515151))),
                                    hintStyle: TextStyle(
                                        color: Color(0xff848484),
                                        fontSize: SizeConfig.b * 3.95,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: SizeConfig.b * 0.037)),
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
                                    focusColor: Color(0xff848484),
                                    labelText: 'Link',
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff515151))),
                                    hintStyle: TextStyle(
                                        color: Color(0xff848484),
                                        fontSize: SizeConfig.b * 3.95,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: SizeConfig.b * 0.037)),
                                maxLines: null,
                              ),
                              SizedBox(
                                height: SizeConfig.screenHeight * 0.0165,
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
                                            SizeConfig.b * 1.4)),
                                    child: Text(
                                      'Add',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize:
                                              SizeConfig.screenWidth * 0.039),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ]));
                }),
            child: Icon(
              Icons.add,
              size: SizeConfig.b * 8.9,
              color: Colors.white,
            ),
            backgroundColor: Color(0xffF36C24),
          ),
          body: TabBarView(children: [
            Container(
              color: Color(0xffE5E5E5),
              child: Center(
                child: Text('Subject'),
              ),
            ),
            Container(
              color: Color(0xffE5E5E5),
              child: Center(
                child: Text('Student'),
              ),
            ),
            Container(
              color: Color(0xffE5E5E5),
              child: Center(
                child: Text('Time-Table'),
              ),
            ),
            Container(
              color: Color(0xffE5E5E5),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.171875),
                  /*Container(
                    decoration: BoxDecoration(
                    image: DecorationImage(
                    image: ExactAssetImage(
                          'leaf.png',
                    ),
                    fit: BoxFit.cover)),
                    ),*/
                  SizedBox(height: SizeConfig.screenHeight * 0.036),
                  Center(
                      child: Text("No Courses Found !",
                          style: TextStyle(
                              color: gc,
                              fontSize: SizeConfig.screenWidth * 0.033))),
                ],
              ),
            ),
          ])),
    );
  }
}
