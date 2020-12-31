import 'package:flutter/material.dart';

class DropDownCreate extends StatefulWidget {
  final int numberOfQ;
  final int marks;
  final int assgnNo;
  final String quesType;

  DropDownCreate(
      {@required this.assgnNo,
      @required this.numberOfQ,
      @required this.marks,
      @required this.quesType});

  @override
  _DropDownCreateState createState() => _DropDownCreateState();
}

class _DropDownCreateState extends State<DropDownCreate> {
  Item1 selectedfilters;
  List<Item1> users = <Item1>[
    Item1("Default State"),
    Item1("Omnimatrix"),
    Item1("Option z"),
    Item1("Option y"),
    Item1("Option x"),
  ];

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.027778),
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.04444),
      width: SizeConfig.screenWidth * 0.8888,
      height: SizeConfig.screenHeight * 0.05625,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.022222),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0.0, 3.0),
            spreadRadius: SizeConfig.b * 0.2,
            blurRadius: SizeConfig.b * 0.5,
          ),
        ],
      ),
      child: DropdownButton<Item1>(
        elevation: 10,
        hint: Text("Choose Type",
            style: TextStyle(
                color: Color(0xff1C1C1C),
                fontSize: SizeConfig.screenWidth * 0.04444,
                fontWeight: FontWeight.w400)),
        value: selectedfilters,
        isExpanded: true,
        iconSize: SizeConfig.screenWidth * 0.0778,
        dropdownColor: Colors.white,
        onChanged: (Item1 value) {
          setState(() {
            selectedfilters = value;
          });
        },
        underline: Container(),
        items: users.map((Item1 user) {
          return DropdownMenuItem<Item1>(
            value: user,
            child: Text(
              user.name,
              style: TextStyle(
                color: Color(0xff1C1C1C),
                fontSize: SizeConfig.screenWidth * 0.04444,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Item1 {
  const Item1(this.name);
  final String name;
}
