import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class ArrangeMeeting extends StatelessWidget {
  String meetingName;
  String description;
  String time;
  bool meetingStatus;
  String date;

  ArrangeMeeting(
      {@required this.meetingName,
      @required this.description,
      @required this.time,
      @required this.date});

  CalendarController _calendarController = CalendarController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 10,
        titleSpacing: -5,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: gc,
            ),
            onPressed: () {
              print('Back');
            }),
        backgroundColor: Colors.white,
        title: Text(
          'Arrange Meeting',
          style: TextStyle(
            color: gc,
            fontWeight: FontWeight.w400,
            fontSize: SizeConfig.screenWidth * 0.05,
          ),
        ),
      ),
      bottomNavigationBar: Bottom(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.0277777),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.015625),
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          SizeConfig.screenWidth * 0.0138889),
                    ),
                    child: TableCalendar(
                      initialCalendarFormat: CalendarFormat.month,
                      calendarController: _calendarController,
                      availableGestures: AvailableGestures.horizontalSwipe,
                      formatAnimation: FormatAnimation.slide,
                      headerStyle: HeaderStyle(
                        centerHeaderTitle: true,
                        formatButtonVisible: false,
                      ),
                      daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.54),
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.screenWidth * 0.033,
                        ),
                        weekendStyle: TextStyle(
                          color: gc,
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.screenWidth * 0.0333,
                        ),
                      ),
                      calendarStyle: CalendarStyle(
                        selectedColor: gcc,
                        markersColor: gc,
                        outsideDaysVisible: false,
                        weekdayStyle: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.87),
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.screenWidth * 0.0333),
                        weekendStyle: TextStyle(
                          color: gc,
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.screenWidth * 0.0333,
                        ),
                        todayStyle: TextStyle(
                          color: gcc,
                          fontWeight: FontWeight.w700,
                          fontSize: SizeConfig.screenWidth * 0.0389,
                        ),
                      ),
                      builders: CalendarBuilders(
                        selectedDayBuilder: (BuildContext context, date, _) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: SizeConfig.screenWidth * 0.021833,
                              vertical: SizeConfig.v * 1.123,
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: gcc,
                            ),
                            child: Text(
                              '${date.day}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: SizeConfig.screenWidth * 0.0389,
                              ),
                            ),
                          );
                        },
                        todayDayBuilder: (context, date, _) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: SizeConfig.screenWidth * 0.021833,
                              vertical: SizeConfig.v * 1.123,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0x99305275),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '${date.day}',
                              style: TextStyle(
                                color: gcc,
                                fontWeight: FontWeight.w700,
                                fontSize: SizeConfig.screenWidth * 0.04167,
                              ),
                            ),
                          );
                        },
                        markersBuilder: (context, date, events, holidays) {
                          final children = <Widget>[];
                          if (events.isNotEmpty) {
                            children.add(
                              Positioned(
                                right: 0,
                                left: 0,
                                bottom: SizeConfig.b * 0.72,
                                child: Center(
                                  child: Container(
                                    height: SizeConfig.b * 1.45,
                                    width: SizeConfig.b * 1.45,
                                    decoration: BoxDecoration(
                                      color: gc,
                                      borderRadius: BorderRadius.circular(
                                        SizeConfig.b * 2.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                          return children;
                        },
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(),
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: 1,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Card(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.screenWidth * 0.01389),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.screenWidth * 0.05,
                                vertical: SizeConfig.screenHeight * 0.0125,
                              ),
                              child: Row(
                                children: [
                                  Row(children: [
                                    Icon(
                                      Icons.video_call,
                                      color: gc,
                                      size: SizeConfig.screenWidth * 0.07,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.screenWidth * 0.027778,
                                    ),
                                    Container(
                                      width: SizeConfig.screenWidth * 0.4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${this.meetingName}',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: SizeConfig.screenWidth *
                                                  0.044,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing:
                                                  SizeConfig.b * 0.036,
                                              color: Color(0xff1C1C1C),
                                            ),
                                          ),
                                          Text(
                                            '${this.description}',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: SizeConfig.screenWidth *
                                                  0.0389,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff515151),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Text(
                                        '${this.time}',
                                        style: TextStyle(
                                          color: gcc,
                                          fontWeight: FontWeight.w400,
                                          fontSize:
                                              SizeConfig.screenWidth * 0.0444,
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'PM',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: gcc,
                                            fontWeight: FontWeight.w400,
                                            fontSize:
                                                SizeConfig.screenWidth * 0.0333,
                                          ),
                                        ),
                                      ),
//SizedBox(width: SizeConfig.screenWidth* 2),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.015625),
            Row(children: [
              Container(
                color:
                    Colors.white, //to change color if the list is empty to grey
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.07778,
                  vertical: SizeConfig.screenHeight * 0.015625,
                ),
                width: SizeConfig.screenWidth,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: 4,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(children: [
                                    index == 3 //for those who are unattended
                                        ? CircleAvatar(
                                            radius: SizeConfig.b * 2.55,
                                            backgroundColor: gcc,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: SizeConfig.b * 2,
                                            ),
                                          )
                                        : CircleAvatar(
                                            backgroundColor: gcc,
                                            radius: SizeConfig.b * 2.55,
                                          ),
                                    index == 3 //to remove last line
                                        ? Container()
                                        : Container(
                                            width: SizeConfig.b * 0.588,
                                            height:
                                                SizeConfig.screenHeight * 0.063,
                                            color: gcc,
                                          ),
                                  ]),
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 0.03055556,
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth * 0.4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Meeting name',
                                          style: TextStyle(
                                            fontSize:
                                                SizeConfig.screenWidth * 0.0389,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: SizeConfig.b * 0.036,
                                            color: Color(0xff1C1C1C),
                                          ),
                                        ),
                                        Text(
                                          '${this.date}',
                                          style: TextStyle(
                                            fontSize: SizeConfig.screenWidth *
                                                0.033333,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff515151),
                                          ),
                                        ),
                                        SizedBox(height: SizeConfig.v * 2),
                                      ],
                                    ),
                                  )
                                ]),
                            Spacer(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${this.time}',
                                  style: TextStyle(
                                    color: gcc,
                                    fontWeight: FontWeight.w400,
                                    fontSize: SizeConfig.screenWidth * 0.0333,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'PM',
                                    style: TextStyle(
                                      color: gcc,
                                      fontWeight: FontWeight.w400,
                                      fontSize:
                                          SizeConfig.screenWidth * 0.027778,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: SizeConfig.screenWidth * 0.0277778),
                              ],
                            ),
                          ]);
                    }),
              ),
            ]),
            SizedBox(height: SizeConfig.screenHeight * 0.03125),
            MaterialButton(
              onPressed: () {
                print('Add Session');
              },
              color: gc,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(SizeConfig.screenWidth * 0.01389),
              ),
              elevation: 4,
              minWidth: SizeConfig.screenWidth * 0.444,
              child: Text(
                'Add Session',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  letterSpacing: SizeConfig.b * 0.0364,
                  fontSize: SizeConfig.screenWidth * 0.0389,
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.03125),
          ],
        ),
      ),
    );
  }
}
