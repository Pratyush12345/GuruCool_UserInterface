import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Library extends StatelessWidget {
  TextEditingController _searchInputController = new TextEditingController();
  final String schoolName;
  final String title;
  Library({@required this.schoolName, @required this.title});
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
                child: Expanded(
                    child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(height: SizeConfig.screenHeight * 0.04),
                            Container(
                              width: SizeConfig.screenWidth * 0.84,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: SizeConfig.b * 0.7,
                                        blurRadius: SizeConfig.b * 1.5,
                                        offset: Offset(0, 2))
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular(SizeConfig.b * 7)),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: SizeConfig.v * 0.2),
                                child: Row(children: [
                                  SizedBox(
                                      width: SizeConfig.screenWidth * 0.028),
                                  Icon(Icons.search, color: Color(0xffF36C24)),
                                  SizedBox(
                                      width: SizeConfig.screenWidth * 0.028),
                                  Container(
                                    width: SizeConfig.screenWidth * 0.64,
                                    child: TextField(
                                      maxLines: 1,
                                      //controller: _searchInputController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText:
                                              'Search books by their name',
                                          isDense: true,
                                          hintStyle: TextStyle(
                                              fontSize: SizeConfig.b * 3.5,
                                              color: Color(0xff848484),
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  )
                                ]),
                              ),
                            ),
                            SizedBox(height: SizeConfig.screenHeight * 0.0299),
                            GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                itemCount: 10,
                                itemBuilder: (BuildContext ctxt, int index) {
                                  return Card(
                                    margin: EdgeInsets.symmetric(
                                        horizontal:
                                            SizeConfig.screenWidth * 0.0386,
                                        vertical:
                                            SizeConfig.screenHeight * 0.02),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.b * 2.5)),
                                    elevation: 7,
                                    child: Stack(
                                      children: [
                                        CustomPaint(
                                          size: Size(SizeConfig.screenWidth * 2,
                                              SizeConfig.screenHeight * 0.22),
                                          painter: LibraryCustomPainter(),
                                        ),
                                        Positioned(
                                            top: SizeConfig.screenHeight *
                                                0.0093,
                                            left:
                                                SizeConfig.screenWidth * 0.0277,
                                            child: Container(
                                              width: SizeConfig.screenWidth *
                                                  0.364,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    title,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: SizeConfig
                                                                .screenWidth *
                                                            0.038),
                                                  )
                                                ],
                                              ),
                                            )),
                                        Positioned(
                                            top:
                                                SizeConfig.screenHeight * 0.075,
                                            left: SizeConfig.screenWidth * 0.18,
                                            child: Image.asset(
                                              'images/books.png',
                                              width:
                                                  SizeConfig.screenWidth * 0.22,
                                              height: SizeConfig.screenHeight *
                                                  0.098,
                                            )),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              IconButton(
                                                  icon: Icon(Icons
                                                      .star_border_outlined),
                                                  iconSize: SizeConfig.b * 6,
                                                  color: Color(0xffC7C7C7),
                                                  onPressed: () {}),
                                              IconButton(
                                                  icon:
                                                      Icon(Icons.arrow_forward),
                                                  iconSize: SizeConfig.b * 6,
                                                  color: Color(0xff3F586E),
                                                  onPressed: () {}),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                })
                          ],
                        )))),
          ])),
    );
  }
}
