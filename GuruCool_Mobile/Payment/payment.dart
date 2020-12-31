import 'package:flutter/material.dart';
import 'package:qwe/oneTime.dart';
import 'package:qwe/installment.dart';
import 'package:qwe/paidOffline.dart';
import 'package:qwe/paidOffline2.dart';
import 'package:qwe/my_flutter_app_icons.dart';
import 'package:flutter/widgets.dart';

class Payment extends StatelessWidget {
  final String classNumber;
  final int coursePrice;

  Payment({
    @required this.classNumber,
    @required this.coursePrice,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          elevation: 10,
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
            'Payment',
            style: TextStyle(
              color: gc,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.screenWidth * 0.05,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: SizeConfig.screenHeight * 0.17,
              color: Colors.white,
              margin: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.009375,
              ),
              padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.015625,
                left: SizeConfig.screenWidth * 0.0444444,
                right: SizeConfig.screenWidth * 0.0694444,
              ),
              child: Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Class ${this.classNumber}',
                          style: TextStyle(
                            color: gc,
                            fontWeight: FontWeight.w700,
                            fontSize: SizeConfig.screenWidth * 0.06667,
                          ),
                        ),
                        SizedBox(
                            height: SizeConfig.screenHeight * 0.015625 * 1.4),
                        Text(
                          'Course Price',
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.053,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          '₹ ${this.coursePrice}',
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.053,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ]),
                  Spacer(),
                  Image.asset(
                    'images/leaf1.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.015625 / 2),
            Container(
              height: SizeConfig.screenHeight * 0.225,
              color: Colors.white,
              padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.015625 * 1.4,
                left: SizeConfig.screenWidth * 0.05,
                right: SizeConfig.screenWidth * 0.05,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose An Option',
                      style: TextStyle(
                        fontSize: SizeConfig.screenWidth * 0.0389,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff848484),
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.028125),
                    Container(
                      width: SizeConfig.screenWidth * 0.95,
                      height: SizeConfig.screenHeight * 0.1,
                      child: TabBar(
                          indicatorPadding: EdgeInsets.zero,
                          unselectedLabelColor: Color(0xff848484),
                          labelColor: gc,
                          labelPadding: EdgeInsets.zero,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(0.0, 0.0),
                                blurRadius: SizeConfig.screenWidth * 0.01389,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.01389,
                            ),
                          ),
                          tabs: [
                            Tab(
                              child: Container(
                                width: SizeConfig.screenWidth * 0.1944,
                                height: SizeConfig.screenHeight * 0.1,
                                child: Column(children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      MyFlutterApp.one_time,
                                      size: SizeConfig.screenWidth * 0.085,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'One Time Pay',
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.screenWidth * 8 / 360,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: SizeConfig.screenWidth * 0.1944,
                                height: SizeConfig.screenHeight * 0.11,
                                child: Column(children: [
                                  Icon(
                                    MyFlutterApp.installments,
                                    size: SizeConfig.screenWidth * 0.085,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Installments',
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.screenWidth * 8 / 360,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: SizeConfig.screenWidth * 0.1944,
                                height: SizeConfig.screenHeight * 0.11,
                                child: Column(children: [
                                  Icon(
                                    MyFlutterApp.offline,
                                    size: SizeConfig.screenWidth * 0.085,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Paid Offline',
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.screenWidth * 8 / 360,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ]),
                    ),
                  ]),
            ),
            Expanded(
              flex: 3,
              child: TabBarView(children: [
                OneTime(
                  totalFees: 5000,
                  discount: 5.0,
                  fine: 0,
                  lastDate: "26/11/2007",
                ),
                Installment(
                  amount: 1000,
                  lastDate: "26/11/20",
                ),
//PaidOffline(totalFees: 5000,discount: 5.0,fine:0,lastDate: "26/11/2007",),
                PaidOffline2(
                  amount: 1000,
                  lastDate: "26/11/20",
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
