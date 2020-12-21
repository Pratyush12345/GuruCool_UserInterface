import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:A/utils/sizeConfig.dart';
import 'package:A/utils/color.dart';


class Reply extends StatelessWidget {
  final String name;
    Reply({
      @required this.name,
    });


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colorsgc().bgColor,
      appBar: AppBar(
        elevation: 10,
        titleSpacing: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colorsgc().gc,
            ),
            onPressed: () {
              print('Back');
            }),
        backgroundColor: Colors.white,
        title: Text(
          '${this.name}',
          style: TextStyle(
              color: Colorsgc().gc,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.b * 4.5),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  icon: Icon(MdiIcons.send),
                  color: Colorsgc().gc,
                  iconSize: SizeConfig.b * 7,
                  onPressed: () {
                    Text('Send');
                  }),
              SizedBox(
                width: SizeConfig.screenWidth * 0.02,
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.screenWidth * 0.055,
            vertical: SizeConfig.screenHeight * 0.023,
          ),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text('Replying to : ',
                        style: TextStyle(fontSize: SizeConfig.b * 3.5)),
                    Text('${this.name}',
                        style: TextStyle(fontSize: SizeConfig.b * 3.5))
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: SizeConfig.screenHeight * 0.532),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenWidth * 0.041,
                      vertical: SizeConfig.screenHeight * 0.0095),
                  color: Colors.white,
                  child: TextField(
                    maxLines: 20,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
