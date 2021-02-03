import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:A/Admin Corner/publicContent.dart';
import 'package:A/Admin Corner/Notice.dart';
import 'package:A/utils/sizeConfig.dart';

class Tabs extends StatelessWidget {
  TabController _tabController;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
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
            'Admin Corner',
            style: TextStyle(
                color: Color(0xffF36C24), fontWeight: FontWeight.w400),
          ),
          bottom: TabBar(
              indicatorWeight: SizeConfig.v * 0.56,
              indicatorColor: Color(0xffF36C24),
              labelPadding: EdgeInsets.zero,
              labelColor: Color(0xffF36C24),
              unselectedLabelColor: Color(0xff858A8F),
              tabs: [
                Tab(
                  child: Text(
                    'Notice',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.b * 3.8,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Public Content',
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.view_week_rounded), label: 'COURSES'),
              BottomNavigationBarItem(
                  icon: Icon(MdiIcons.viewGrid), label: 'MODULES'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance), label: 'MY INSTITUTE'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box), label: 'MY PROFILE'),
            ]),
        body: TabBarView(
            controller: _tabController, children: [Notice(
              description: 'Mast difficult paper dunga sab ko kam number phir me permament. emoji.jpeg',
              date: '13 oct 2020',
              time: '12:00AM',
            ), PublicContent(
              title: 'Google',
            )]),
      ),
    );
  }
}
