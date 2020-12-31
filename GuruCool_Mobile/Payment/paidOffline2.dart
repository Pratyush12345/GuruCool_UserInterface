import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';

class PaidOffline2 extends StatelessWidget {
  final int amount;
  final String lastDate;

  PaidOffline2({
    @required this.amount,
    @required this.lastDate,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(children: [
      Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth * 0.0361111,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth * 0.06,
            ),
            height: SizeConfig.screenHeight * 0.078125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                SizeConfig.screenWidth * 0.0128889,
              ),
              color: Color.fromRGBO(243, 108, 36, 0.1),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Offline Payment in Installments',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: gc,
                ),
              ),
              Spacer(),
              CustomSwitchButton(
                checkedColor: Color(0xff44D141),
                unCheckedColor: Color(0xff848484),
                buttonWidth: SizeConfig.screenWidth * 0.115,
                buttonHeight: SizeConfig.screenHeight * 0.034375,
                animationDuration: Duration(milliseconds: 400),
                indicatorWidth: SizeConfig.screenWidth * 0.05,
                checked: true,
                backgroundColor: Colors.white,
              ),
            ]),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.015625 * 2),
          Text(
            'Payment Details',
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.0389,
              fontWeight: FontWeight.w400,
              color: Color(0xff848484),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.015625 * 1.4),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.0389),
            child: Row(children: [
              Text(
                'Installments',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
              Spacer(),
              Text(
                'Amount',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
              Spacer(),
              Text(
                'Last Date',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
              SizedBox(
                width: SizeConfig.screenWidth * 0.116667,
              ),
            ]),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.015625 * 0.4),
          Container(
            height: SizeConfig.screenHeight * 0.00078125,
            color: Color(0xff848484),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.015625 * 0.7),
          ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: SizeConfig.screenHeight * 0.18),
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenWidth * 0.0389),
                    child: Column(children: [
                      Row(children: [
                        Text(
                          'Installment ${(index + 1).toString()}',
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0389,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff848484),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '₹ ${this.amount}',
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0389,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff848484),
                          ),
                        ),
                        Spacer(),
                        Text(
                          this.lastDate,
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0389,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF848484),
                          ),
                        ),
                        SizedBox(
                            width: SizeConfig.screenWidth * 0.02777778 * 2.2),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.03125,
                          width: SizeConfig.screenWidth * 0.05556,
                          child: Theme(
                            data: ThemeData(
                              toggleableActiveColor: Colors.white,
                              disabledColor: gc,
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
                      SizedBox(
                          height: SizeConfig.screenHeight * 0.015625 * 1.2),
                    ]),
                  );
                }),
          ),
        ]),
      ),
      Expanded(child: Container(color: Colors.white)),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(00, -SizeConfig.screenHeight * 0.00625),
              blurRadius: SizeConfig.screenWidth * 0.005,
            ),
          ],
          borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.01389),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.screenWidth * 0.0361111,
            vertical: SizeConfig.screenHeight * 0.015625 * 0.5),
        child: Row(children: [
          Container(
            width: SizeConfig.screenWidth * 0.41,
            child: Text(
              'You’ll be allowed to enter in the Institute when someone accepts your Request',
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.027778,
                fontWeight: FontWeight.w400,
                color: gc,
              ),
            ),
          ),
          Spacer(),
          MaterialButton(
            onPressed: () {
              requestDialogBox(context);
            },
            color: gc,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(SizeConfig.screenWidth * 0.01389),
            ),
            elevation: 3,
            minWidth: SizeConfig.screenWidth * 0.444,
            height: SizeConfig.screenHeight * 0.015625 * 3,
            child: Text(
              'Send Request',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: SizeConfig.b * 0.0364,
                fontSize: SizeConfig.screenWidth * 0.0389,
              ),
            ),
          ),
        ]),
      ),
    ]);
  }
}

void requestDialogBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.0833),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(SizeConfig.screenWidth * 0.027778),
          ),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.0472222,
                  vertical: SizeConfig.screenHeight * 0.03125),
              child: Column(
                children: [
                  Text(
                    'Are you sure you have not paid any installments ?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 0.0389,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff848484),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        minWidth: SizeConfig.screenWidth * 0.25,
                        height: SizeConfig.screenHeight * 0.015625 * 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.01389),
                        ),
                        color: gc,
                        elevation: 5,
                        child: Text(
                          'YES',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: SizeConfig.screenWidth * 0.0389),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: SizeConfig.screenWidth * 0.25,
                        height: SizeConfig.screenHeight * 0.015625 * 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.01389),
                        ),
                        color: gc,
                        elevation: 5,
                        child: Text(
                          'NO',
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
