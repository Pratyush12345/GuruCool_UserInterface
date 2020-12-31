import 'package:flutter/material.dart';
class Installment extends StatelessWidget {
  final int amount;
  final String lastDate;

  Installment({
    @required this.amount,
    @required this.lastDate,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(children: [
      Container(
        color: Colors.white,
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.03333),
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
          SizedBox(height: SizeConfig.screenHeight * 0.015625 * 1.8),
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
                BoxConstraints(maxHeight: SizeConfig.screenHeight * 0.26),
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenWidth * 0.0389),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Installment ${(index + 1).toString()}',
                              style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.0389,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff848484),
                              ),
                            ),
                            Text(
                              '₹ ${this.amount.toString()}',
                              style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.0389,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff848484),
                              ),
                            ),
                            Text(
                              this.lastDate,
                              style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.0389,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff848484),
                              ),
                            ),
                          ]),
                      SizedBox(
                          height: SizeConfig.screenHeight * 0.015625 * 1.8),
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
            width: SizeConfig.screenWidth * 0.452,
            child: Text(
              'Pay your 1st Installment in order to enter in the Institute',
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
        ]),
      ),
    ]);
  }
}
