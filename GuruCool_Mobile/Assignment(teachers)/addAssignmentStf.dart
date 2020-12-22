import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
class Time {
  int index;
  String time;
  Time(this.index, this.time);
  static List<Time> getTime() {
    return <Time>[Time(0, 'AM'), Time(1, 'PM')];
  }
}
class AddAssignment extends StatefulWidget {
  final String courseId;
  final passKey;
  final String titleName;
  AddAssignment({
    @required this.courseId,
    @required this.passKey,
    @required this.titleName,
  });

  @override
  _AddAssignmentState createState() => _AddAssignmentState();
}

class _AddAssignmentState extends State<AddAssignment> {
  List<Time> _time = Time.getTime();
  List<DropdownMenuItem<Time>> _dropdownMenuItemsTime;
  Time _selectedTime;
  String selectedMonth;
  int monthIndex = 0;
  bool pdfSelected = false;
  bool createQues = false;

  var monthsName = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  @override
  void initState() {
    selectedMonth = monthsName[monthIndex];

    _dropdownMenuItemsTime = buildDropdownMenuItemsTime(_time);
    _selectedTime = _dropdownMenuItemsTime[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Time>> buildDropdownMenuItemsTime(List times) {
    List<DropdownMenuItem<Time>> items = List();

    for (Time time in times) {
      items.add(
        DropdownMenuItem(
          value: time,
          child: Text(
            time.time,
            style: TextStyle(
              color: Color(0xff848484),
            ),
          ),
        ),
      );
    }
    return items;
  }

  onchangeDropdownItemTime(Time selectedTime) {
    setState(() {
      _selectedTime = selectedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: gc,
            ),
            onPressed: () {}),
        title: Transform(
          transform:
              Matrix4.translationValues(-SizeConfig.screenWidth * 0.06, 0, 0),
          child: Text(
            widget.titleName,
            style: TextStyle(
                color: gc,
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.screenWidth * 0.05),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight * 0.025,
                  horizontal: SizeConfig.screenWidth * 0.05666),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.b * 2.6,
                        top: SizeConfig.screenHeight * 0.013,
                        bottom: SizeConfig.v * 0.013,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                      labelStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.0444,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff515151),
                        ),
                      ),
                      hintStyle: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 0.0444,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037),
                    ),
                    maxLines: null,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.0203125),
                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.b * 2.6,
                        top: SizeConfig.screenHeight * 0.013,
                        bottom: SizeConfig.v * 0.013,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Description',
                      labelStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.0444,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff515151),
                        ),
                      ),
                      hintStyle: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 0.0444,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037),
                    ),
                    maxLines: null,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.0203125),
                  Container(
                    height: SizeConfig.screenHeight * 0.04,
                    width: SizeConfig.screenWidth * 0.889,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SizeConfig.b * 1.2),
                      border: Border.all(
                          color: Color(0xff848484),
                          width: SizeConfig.screenWidth * 0.002),
                    ),
                    padding: EdgeInsets.only(left: SizeConfig.b * 2.6),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        child: DropdownButton(
                            icon: Icon(Icons.arrow_drop_down,
                                color: Colors.black,
                                size: SizeConfig.screenWidth * 0.07),
                            isDense: true,
                            value: 0,
                            items: null,
                            onChanged: null),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.0203125),
                  Container(
                    height: SizeConfig.screenHeight * 0.04,
                    width: SizeConfig.screenWidth * 0.889,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SizeConfig.b * 1.2),
                      border: Border.all(
                          color: Color(0xff848484),
                          width: SizeConfig.screenWidth * 0.002),
                    ),
                    padding: EdgeInsets.only(left: SizeConfig.b * 2.6),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        child: DropdownButton(
                            icon: Icon(Icons.arrow_drop_down,
                                color: Colors.black,
                                size: SizeConfig.screenWidth * 0.07),
                            isDense: true,
                            value: 0,
                            items: null,
                            onChanged: null),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.0203125),
                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.b * 2.6,
                        top: SizeConfig.screenHeight * 0.013,
                        bottom: SizeConfig.v * 0.013,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Total Number of Questions',
                      labelStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.0444,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff515151))),
                      hintStyle: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 0.0444,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037),
                    ),
                    maxLines: null,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.0203125),
                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.b * 2.6,
                        top: SizeConfig.screenHeight * 0.013,
                        bottom: SizeConfig.v * 0.013,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Total Marks',
                      labelStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.0444,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff515151),
                        ),
                      ),
                      hintStyle: TextStyle(
                          color: Color(0xff848484),
                          fontSize: SizeConfig.screenWidth * 0.0444,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037),
                    ),
                    maxLines: null,
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.028125),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 0.08,
                    vertical: SizeConfig.screenHeight * 0.01875),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'End Date',
                          style: TextStyle(
                            color: Color(0xff2C2C2C),
                            fontSize: SizeConfig.screenWidth * 0.04444,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth * 0.10278),
                        Container(
                          width: SizeConfig.screenWidth * 0.55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: SizeConfig.screenWidth * 0.12,
                                height: SizeConfig.screenHeight * 0.032815,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(SizeConfig.b * 1.2),
                                  border: Border.all(
                                      color: Color(0xff2C2C2C),
                                      width: SizeConfig.b * 0.121),
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(2)
                                  ],
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.only(
                                      left: SizeConfig.b * 1,
                                      top: SizeConfig.v * 0.4,
                                      bottom: SizeConfig.v * 0.4,
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'Day',
                                    hintStyle: TextStyle(
                                        color: Color(0xff848484),
                                        fontSize:
                                            SizeConfig.screenWidth * 0.04444,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: SizeConfig.b * 0.037),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Transform(
                                    transform: Matrix4.translationValues(
                                        SizeConfig.screenWidth * 0.015, 0, 0),
                                    child: IconButton(
                                        icon: Icon(Icons.arrow_left),
                                        constraints: BoxConstraints(),
                                        padding: EdgeInsets.zero,
                                        color: Color(0xff848484),
                                        iconSize: SizeConfig.b * 7,
                                        onPressed: () {
                                          setState(() {
                                            if (monthIndex == 0) {
                                              monthIndex = 12;
                                            }
                                            monthIndex--;
                                            selectedMonth =
                                                monthsName[monthIndex];
                                          });
                                        }),
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth * 0.13,
                                    height: SizeConfig.screenHeight * 0.032815,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.b * 1.2),
                                      border: Border.all(
                                          color: Color(0xff2C2C2C),
                                          width: SizeConfig.b * 0.121),
                                    ),
                                    child: Text(
                                      '${selectedMonth}',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.screenWidth * 0.04444,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff848484)),
                                    ),
                                  ),
                                  Transform(
                                    transform: Matrix4.translationValues(
                                        -SizeConfig.screenWidth * 0.015, 0, 0),
                                    child: IconButton(
                                        icon: Icon(Icons.arrow_right),
                                        constraints: BoxConstraints(),
                                        padding: EdgeInsets.zero,
                                        color: Color(0xff848484),
                                        iconSize: SizeConfig.b * 7,
                                        onPressed: () {
                                          setState(() {
                                            if (monthIndex == 11) {
                                              monthIndex = -1;
                                            }
                                            monthIndex++;
                                            selectedMonth =
                                                monthsName[monthIndex];
                                          });
                                        }),
                                  ),
                                ],
                              ),
                              Container(
                                width: SizeConfig.screenWidth * 0.136111,
                                height: SizeConfig.screenHeight * 0.032815,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(SizeConfig.b * 1.2),
                                  border: Border.all(
                                      color: Color(0xff2C2C2C),
                                      width: SizeConfig.b * 0.121),
                                ),
                                child: TextField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(4)
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.only(
                                      left: SizeConfig.b * 1.6,
                                      top: SizeConfig.v * 0.4,
                                      bottom: SizeConfig.v * 0.4,
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'Year',
                                    hintStyle: TextStyle(
                                        color: Color(0xff848484),
                                        fontSize:
                                            SizeConfig.screenWidth * 0.04444,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: SizeConfig.b * 0.037),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.02),
                    Row(
                      children: [
                        Text(
                          'End Time',
                          style: TextStyle(
                            color: Color(0xff2C2C2C),
                            fontSize: SizeConfig.screenWidth * 0.0444,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth * 0.1),
                        Container(
                          width: SizeConfig.screenWidth * 0.54,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: SizeConfig.screenWidth * 0.12,
                                height: SizeConfig.screenHeight * 0.032815,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.b * 1.2),
                                    border: Border.all(
                                        color: Color(0xff2C2C2C),
                                        width: SizeConfig.b * 0.121)),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(2)
                                  ],
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.only(
                                      left: SizeConfig.b * 1,
                                      top: SizeConfig.v * 0.4,
                                      bottom: SizeConfig.v * 0.4,
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'Hour',
                                    hintStyle: TextStyle(
                                        color: Color(0xff848484),
                                        fontSize:
                                            SizeConfig.screenWidth * 0.04444,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: SizeConfig.b * 0.037),
                                  ),
                                ),
                              ),
                              Container(
                                width: SizeConfig.screenWidth * 0.13,
                                height: SizeConfig.screenHeight * 0.032815,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.b * 1.2),
                                    border: Border.all(
                                        color: Color(0xff2C2C2C),
                                        width: SizeConfig.b * 0.121)),
                                child: TextField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(2)
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.only(
                                      left: SizeConfig.b * 2.5,
                                      top: SizeConfig.v * 0.4,
                                      bottom: SizeConfig.v * 0.4,
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'Min',
                                    hintStyle: TextStyle(
                                        color: Color(0xff848484),
                                        fontSize:
                                            SizeConfig.screenWidth * 0.04444,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: SizeConfig.b * 0.037),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                width: SizeConfig.screenWidth * 0.136111,
                                height: SizeConfig.screenHeight * 0.032815,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(SizeConfig.b * 1.2),
                                  border: Border.all(
                                      color: Color(0xff2C2C2C),
                                      width: SizeConfig.b * 0.121),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: ButtonTheme(
                                    padding: EdgeInsets.zero,
                                    child: DropdownButton(
                                        isDense: true,
                                        value: _selectedTime,
                                        items: _dropdownMenuItemsTime,
                                        onChanged: onchangeDropdownItemTime),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.0265625),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.1388),
              color: Colors.white,
              child: Column(
                children: [
                  Row(children: [
                    Text(
                      "Upload PDF",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.screenWidth * 0.0444),
                    ),
                    Spacer(),
                    Checkbox(
                      value: false,
                      onChanged: null,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ]),
                  Row(children: [
                    Text(
                      "Create Questions",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.screenWidth * 0.0444),
                    ),
                    Spacer(),
                    Checkbox(
                      value: createQues,
                      onChanged: (createQues) {
                        setState(() {
                          createQues = !createQues;
                        });
                      },
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.053125),
            Center(
              child: MaterialButton(
                onPressed: () {},
                minWidth: SizeConfig.screenWidth * 0.44,
                height: SizeConfig.screenHeight * 0.046875,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(SizeConfig.b * 1.28),
                ),
                color: gc,
                elevation: 5,
                child: Text(
                  'Done',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: SizeConfig.screenWidth * 0.039),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
