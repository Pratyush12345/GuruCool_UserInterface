import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:A/Admin Corner/dialogue2.dart';
import 'package:A/utils/sizeConfig.dart';

class PublicContent3 extends StatelessWidget {
  String title;
  String name;
  String description;
  String date;
  String time;

  PublicContent3(
      {@required this.title, @required this.name, @required this.description});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        elevation: 7,
        backgroundColor: Colors.white,
        titleSpacing: -5,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xffF36C24),
            ),
            onPressed: () {
              print('Show menu');
            }),
        title: Text(
          name,
          style:
              TextStyle(color: Color(0xffF36C24), fontWeight: FontWeight.w400),
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
            BottomNavigationBarItem(
                icon: Icon(Icons.view_week_rounded), label: 'COURSES'),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.viewGrid), label: 'MODULES'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: 'MY INSTITUTE'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'MY PROFILE'),
          ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF36C24),
        onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialogue2();
            }),
        child: Icon(
          Icons.add,
          size: SizeConfig.screenWidth * 0.068,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.016),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.029),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(
                          bottom: SizeConfig.screenHeight * 0.01),
                      child: Card(
                        color: Colors.white,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                SizeConfig.screenWidth * 0.017)),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.screenWidth * 0.017),
                                      color: Color(0xff305275).withOpacity(0.8),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(2, 0),
                                            blurRadius: 4,
                                            color:
                                                Colors.black.withOpacity(0.25)),
                                      ]),
                                  height: SizeConfig.screenHeight * 0.129,
                                  width: SizeConfig.screenWidth * 0.29,
                                  child: Image.asset(
                                    'images/pdf.png',
                                    height: SizeConfig.screenHeight * 0.067,
                                    width: SizeConfig.screenWidth * 0.091,
                                  )),
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth * 0.041,
                            ),
                            Container(
                              width: SizeConfig.screenWidth * 0.41,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.038,
                                    ),
                                  ),
                                  Text(
                                    description,
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.screenWidth * 0.035,
                                        color: Color(0xff848484)),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '10 Oct 2020',
                                        style: TextStyle(
                                            color: Color(0xff305275),
                                            fontSize:
                                                SizeConfig.screenWidth * 0.03),
                                      ),
                                      Text(
                                        '10:10 AM',
                                        style: TextStyle(
                                            color: Color(0xff305275),
                                            fontSize:
                                                SizeConfig.screenWidth * 0.03),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.screenHeight * 0.089,
                                )
                              ],
                            )
                          ],
                        ),
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
