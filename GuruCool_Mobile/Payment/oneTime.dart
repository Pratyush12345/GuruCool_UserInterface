import 'package:flutter/material.dart';
class OneTime extends StatelessWidget {
  final int totalFees;
  final double discount;
  final int fine;
  final String lastDate;

  OneTime({
    @required this.totalFees,
    @required this.discount,
    @required this.fine,
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
          SizedBox(height: SizeConfig.screenHeight * 0.023),
          Text(
            'Payment Details',
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.0389,
              fontWeight: FontWeight.w400,
              color: Color(0xff848484),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.0453125),
          Column(children: [
            Row(children: [
              Text(
                'Total Fees :',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
              Spacer(),
              Text(
                '₹ ${this.totalFees.toString()}',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
            ]),
            SizedBox(height: SizeConfig.screenHeight * 0.0140625),
            Row(children: [
              Text(
                'Discount :',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
              Spacer(),
              Text(
                '${this.discount.toString()} %',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
            ]),
            SizedBox(height: SizeConfig.screenHeight * 0.0140625),
            Row(children: [
              Text(
                'Fine :',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
              Spacer(),
              Text(
                '₹ ${this.fine.toString()}',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
            ]),
            SizedBox(height: SizeConfig.screenHeight * 0.0140625),
            Row(children: [
              Text(
                'Last Date :',
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
                  color: Color(0xff848484),
                ),
              ),
            ]),
            SizedBox(height: SizeConfig.screenHeight * 0.0265625),
            Container(
              height: SizeConfig.screenHeight * 0.00078125,
              color: Color(0xff848484),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.015625 * 1.4),
            Row(children: [
              Text(
                'Payable Amount :',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                ),
              ),
              Spacer(),
              Text(
                '₹ 1,000',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.0389,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ]),
          ]),
        ]),
      ),
      Expanded(child: Container(color: Colors.white)),
      Container(
        alignment: Alignment.centerRight,
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
        child: MaterialButton(
          onPressed: () {
            print('Add Session');
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
            'Pay Now',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: SizeConfig.b * 0.0364,
                fontSize: SizeConfig.screenWidth * 0.0389),
          ),
        ),
      ),
    ]);
  }
}
