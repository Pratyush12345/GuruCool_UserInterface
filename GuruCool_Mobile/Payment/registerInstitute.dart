import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RegiterInsitute extends StatelessWidget {
  final TextEditingController _instituteName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenHeight * 0.0203,
              vertical: SizeConfig.screenWidth * 0.077,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Institute Registration',
                  style: TextStyle(
                    color: gc,
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.screenWidth * 0.0389,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.008,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: SizeConfig.screenHeight * 0.078,
                        width: SizeConfig.screenWidth * 0.138,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: gc,
                            width: SizeConfig.screenWidth * 1 / 360,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.account_balance,
                          size: SizeConfig.screenWidth * 0.06,
                          color: gc,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth * 0.0389,
                    ),
                    Text(
                      'Institute Logo (Tap to Upload)',
                      style: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.029,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                      topRight:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                    ),
                  ),
                  child: TextField(
                    controller: _instituteName,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      hintText: 'Institute Name',
                      hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.018,
                        vertical: SizeConfig.screenWidth * 0.036,
                      ),
                    ),
                    maxLines: 2,
                    minLines: 1,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                      topRight:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                    ),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.018,
                        vertical: SizeConfig.screenWidth * 0.036,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.0375,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.account_balance,
                      size: SizeConfig.screenWidth * 0.033,
                      color: Color(0xffA4A4A4),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth * 0.019,
                    ),
                    Text(
                      'Main Branch Details',
                      style: TextStyle(
                        color: Color(0xffA4A4A4),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.screenWidth * 0.0333,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                      topRight:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                    ),
                  ),
                  child: TextField(
                    maxLines: 2,
                    minLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Main Branch Name',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.018,
                        vertical: SizeConfig.screenWidth * 0.036,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                      topRight:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                    ),
                  ),
                  child: TextField(
                    maxLines: 2,
                    minLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Main Branch Address',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.018,
                        vertical: SizeConfig.screenWidth * 0.036,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                SizeConfig.screenWidth * 0.01389),
                            topRight: Radius.circular(
                                SizeConfig.screenWidth * 0.01389),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'City / State',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: gc,
                                width: SizeConfig.screenWidth * 1 / 360,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: gc,
                                width: SizeConfig.screenWidth * 1 / 360,
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Color(0xff848484),
                              fontSize: SizeConfig.screenWidth * 0.033,
                              fontWeight: FontWeight.w300,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.screenHeight * 0.018,
                              vertical: SizeConfig.screenWidth * 0.036,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth * 0.036,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                SizeConfig.screenWidth * 0.01389),
                            topRight: Radius.circular(
                                SizeConfig.screenWidth * 0.01389),
                          ),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Pin Code',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: gc,
                                width: SizeConfig.screenWidth * 1 / 360,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: gc,
                                width: SizeConfig.screenWidth * 1 / 360,
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Color(0xff848484),
                              fontSize: SizeConfig.screenWidth * 0.033,
                              fontWeight: FontWeight.w300,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.screenHeight * 0.018,
                              vertical: SizeConfig.screenWidth * 0.036,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.0375,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.account_balance,
                      size: SizeConfig.screenWidth * 0.033,
                      color: Color(0xffA4A4A4),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth * 0.019,
                    ),
                    Text(
                      'Bank Account Details',
                      style: TextStyle(
                        color: Color(0xffA4A4A4),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.screenWidth * 0.0333,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                      topRight:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Account Holder Name (Optional)',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.018,
                        vertical: SizeConfig.screenWidth * 0.036,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                      topRight:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                    ),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Account Number (Optional)',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.018,
                        vertical: SizeConfig.screenWidth * 0.036,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                      topRight:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'IFSC Code (Optional)',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.018,
                        vertical: SizeConfig.screenWidth * 0.036,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.0375,
                ),
                Row(
                  children: [
                    Image.asset('images/upi.png'),
                    SizedBox(
                      width: SizeConfig.screenWidth * 0.019,
                    ),
                    Text(
                      'Upi Details',
                      style: TextStyle(
                        color: Color(0xffA4A4A4),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.screenWidth * 0.0333,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                      topRight:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Main Branch UPI id',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.018,
                        vertical: SizeConfig.screenWidth * 0.036,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                      topRight:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Main Branch Admin email',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.018,
                        vertical: SizeConfig.screenWidth * 0.036,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                      topRight:
                          Radius.circular(SizeConfig.screenWidth * 0.01389),
                    ),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Main Branch Code',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: gc,
                          width: SizeConfig.screenWidth * 1 / 360,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff848484),
                        fontSize: SizeConfig.screenWidth * 0.033,
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.screenHeight * 0.018,
                        vertical: SizeConfig.screenWidth * 0.036,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.021,
                ),
                Text(
                  'Make your Own branch code for easy references. for eg: 1101',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff000000),
                    fontSize: SizeConfig.screenWidth * 0.0277,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.0375,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        print('Add Session');
                      },
                      color: gc,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.screenWidth * 0.01389,
                        ),
                      ),
                      elevation: 5,
                      height: SizeConfig.screenHeight * 30 / 640,
                      minWidth: SizeConfig.screenWidth * 0.45,
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: SizeConfig.b * 0.0364,
                          fontSize: SizeConfig.screenWidth * 0.0389,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
