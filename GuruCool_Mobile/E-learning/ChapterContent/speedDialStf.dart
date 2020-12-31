import 'package:qwe/ChapterContent/DialogBox/showPdfDialogBox.dart';
import 'package:qwe/ChapterContent/DialogBox/showQuizDialogBox.dart';
import 'package:qwe/ChapterContent/DialogBox/showVideoDialogBox.dart';
import 'package:qwe/utils/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qwe/utils/Colors.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Dial extends StatefulWidget {
  @override
  _Dial createState() => _Dial();
}

class _Dial extends State<Dial> {
  ScrollController scrollController;
  bool dialVisible = true;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        setDialVisible(scrollController.position.userScrollDirection ==
            ScrollDirection.forward);
      });
  }

  void setDialVisible(bool value) {
    setState(() {
      dialVisible = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SpeedDial(
      backgroundColor: gc,
      animatedIcon: AnimatedIcons.add_event,
      animatedIconTheme: IconThemeData(size: SizeConfig.screenWidth * 0.08),
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      visible: dialVisible,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              MdiIcons.youtube,
              color: Colors.white,
              size: SizeConfig.screenWidth * 0.0389,
            ),
            Text(
              "Video",
              style: TextStyle(
                fontSize: SizeConfig.screenWidth*0.0167,
              ),
            ),
          ]),
          backgroundColor: rc,
          onTap: () => showVideoDialogBox(context),
        ),
        SpeedDialChild(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.picture_as_pdf,
              color: Colors.white,
              size: SizeConfig.screenWidth * 0.0389,
            ),
            Text(
              "Content",
              style: TextStyle(
                fontSize: SizeConfig.screenWidth*0.0167,
              ),
            ),
          ]),
          backgroundColor: bt,
          onTap: () => showPdfDialogBox(context),
        ),
        SpeedDialChild(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Icon(
              MdiIcons.clock,
              color: Colors.white,
              size: SizeConfig.screenWidth * 0.0389,
            ),
            Text(
              "Quiz",
              style: TextStyle(
                fontSize: SizeConfig.screenWidth*0.0167,
              ),
            ),
          ]),
          backgroundColor: gc,
          onTap: () => showQuizDialogBox(context),
        ),
      ],
    );
  }
}
