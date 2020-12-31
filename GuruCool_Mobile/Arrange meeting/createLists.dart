import 'package:flutter/material.dart';
import 'package:qwe/constantStf.dart';

class CreateLists extends StatelessWidget {
  final String designation;
  final personNumber;
  final String personName;

  CreateLists(
      {@required this.designation,
      @required this.personName,
      @required this.personNumber});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white, //to be reEditd
      appBar: AppBar(
        elevation: 10,
        titleSpacing: -8,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: gc,
            ),
            onPressed: () {
              print('Back');
            }),
        backgroundColor: Colors.white,
        title: Text(
          'Create New List',
          style: TextStyle(
            color: gc,
            fontWeight: FontWeight.w400,
            fontSize: SizeConfig.screenWidth * 0.05,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialogBox(context);
        },
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: SizeConfig.screenWidth * 0.07,
        ),
        backgroundColor: gc,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  SizeConfig.screenWidth * 0.01389,
                ),
              ),
              margin: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.03125,
                bottom: SizeConfig.screenHeight * 0.0171875,
                right: SizeConfig.screenWidth * 0.02777778,
                left: SizeConfig.screenWidth * 0.02777778,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.0556 / 2,
                  vertical: SizeConfig.screenHeight * 0.015625,
                ),
                child: Column(
                  children: [
                    Constant(
                      designation: "Teacher",
                      personName: "Ritesh Shukla",
                      personNumber: 19,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.05556,
                vertical: SizeConfig.screenHeight * 0.0140625,
              ),
              color: Colors.white,
              child: Row(
                children: [
                  DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      child: DropdownButton(
                        isDense: true,
                        items: null,
                        value: null,
                        onChanged: null,
                      ),
                    ),
                  ),
                  Text(
                    'Edit Lists',
                    style: TextStyle(
                      color: gc,
                      fontSize: SizeConfig.screenWidth * 0.0389,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: SizeConfig.screenHeight * 0.039625,
                    width: SizeConfig.screenWidth * 0.463889,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0.0, 1.5),
                          spreadRadius: SizeConfig.b * 0.4,
                          blurRadius: SizeConfig.b * 0.5,
                        )
                      ],
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(
                          SizeConfig.screenWidth * 0.055556),
                    ),
                    child: Row(children: [
                      SizedBox(width: SizeConfig.screenWidth * 0.02777778 * 2),
                      Container(
                        width: SizeConfig.screenWidth * 0.32,
                        child: TextField(
                          textInputAction: TextInputAction.search,
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: SizeConfig.screenWidth * 0.033,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Name',
                            isDense: true,
                            hintStyle: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.03333,
                                color: Color(0xff848484),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: gc,
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.015625 * 1.5,
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.0556,
                    right: SizeConfig.screenWidth * 0.1),
                color: Colors.white,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Column(children: [
                        Row(children: [
                          CircleAvatar(
                            backgroundColor: bgColor,
                            radius: SizeConfig.screenWidth * 0.05,
                          ),
                          SizedBox(width: SizeConfig.screenWidth * 0.02777778),
                          Container(
                            width: SizeConfig.screenWidth * 0.575,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    this.personName,
                                    style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.0389,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff1C1C1C),
                                    ),
                                  ),
                                  SizedBox(
                                      height: SizeConfig.screenHeight *
                                          0.015625 *
                                          0.4),
                                  Text(
                                    this.designation,
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.screenWidth * 0.03333,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff515151),
                                    ),
                                  ),
                                ]),
                          ),
                          Spacer(),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.0234375,
                            width: SizeConfig.screenWidth * 0.041667,
                            child: Theme(
                              data: ThemeData(
                                toggleableActiveColor: Colors.white,
                                disabledColor: gcc,
                              ),
                              child: Checkbox(
//stroke width is changed to 1 in original checkBox file
                                value: true,
                                activeColor: Colors.white,
                                onChanged: null,
                                checkColor: Colors.white,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height: SizeConfig.screenHeight * 0.015625),
                      ]);
                    }),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

void showDialogBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.0833),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              SizeConfig.screenWidth * 0.02778,
            ),
          ),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.04722,
                vertical: SizeConfig.screenHeight * 0.0265625,
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: SizeConfig.b * 2.6,
                        top: SizeConfig.v * 0.7816,
                        bottom: SizeConfig.v * 0.93,
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'Title',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff515151),
                        ),
                      ),
                      hintStyle: TextStyle(
                          color: hintTextColor,
                          fontSize: SizeConfig.screenWidth * 0.0389,
                          fontWeight: FontWeight.w400,
                          letterSpacing: SizeConfig.b * 0.037),
                    ),
                    maxLines: null,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.0265625,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        minWidth: SizeConfig.screenWidth * 0.25,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.01389),
                        ),
                        color: gc,
                        elevation: 4,
                        child: Text(
                          'Add',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: SizeConfig.screenWidth * 0.0389,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        );
      });
}
