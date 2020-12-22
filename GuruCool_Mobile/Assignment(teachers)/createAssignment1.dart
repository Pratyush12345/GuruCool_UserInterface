import 'package:flutter/material.dart';
import 'package:qwe/dropDownCreateStf.dart';

class CreateAssignment1 extends StatelessWidget {
  final int numberOfQ;
  final int marks;
  CreateAssignment1({
    @required this.numberOfQ,
    @required this.marks,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 8,
        titleSpacing: -5,
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
          'Assignments',
          style: TextStyle(
              color: gc,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.screenWidth * 0.05),
        ),
      ),
      body: Container(
        child: Column(children: [
          SizedBox(height: SizeConfig.screenHeight * 0.028125),
          Row(children: [
            SizedBox(width: SizeConfig.screenWidth * 0.05556),
            Text(
              "Question 1/${this.numberOfQ}",
              style: TextStyle(
                  color: Color(0xff515151),
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.screenWidth * 0.038889),
            ),
          ]),
          SizedBox(height: SizeConfig.screenHeight * 0.0109375),
          DropDownCreate(),// calling out drop down
        ]),
      ),
    );
  }
}
