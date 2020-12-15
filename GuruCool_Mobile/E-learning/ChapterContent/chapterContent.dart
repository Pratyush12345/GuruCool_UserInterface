import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qwe/utils/Colors.dart';
import 'package:qwe/utils/bottom.dart';
import 'package:qwe/ChapterContent/speedDialStf.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
void main() {
runApp(MyApp());
}

class SizeConfig {
MediaQueryData _mediaQueryData;
static double screenWidth;
static double screenHeight;
static double _safeAreaHorizontal;
static double _safeAreaVertical;
static double b;
static double v;

void init(BuildContext context) {
_mediaQueryData = MediaQuery.of(context);
screenHeight = _mediaQueryData.size.height;
screenWidth = _mediaQueryData.size.width;
_safeAreaHorizontal =_mediaQueryData.padding.left + _mediaQueryData.padding.right;
_safeAreaVertical =_mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
b = (screenWidth - _safeAreaHorizontal) / 100;
v = (screenHeight - _safeAreaVertical) / 100;
}
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
theme: ThemeData(
visualDensity: VisualDensity.adaptivePlatformDensity,
),
home: ChapterContent(subjectName:"English"));
}
}
class ChapterContent extends StatelessWidget {
final String courseId;
final String contentType;
final passKey;
final String subjectName;
final String imgCollegeUrl;
ChapterContent({
@required this.courseId,
@required this.passKey,
@required this.contentType,
@required this.subjectName,
@required this.imgCollegeUrl,
});

@override
Widget build(BuildContext context) {
SizeConfig().init(context);
return Scaffold(
appBar: AppBar(
elevation: 10,
backgroundColor: Colors.white,
leading: IconButton(
icon: Icon(Icons.menu,color: Color(0xffF36C24),),
onPressed: () {
}),
title:Transform(transform: Matrix4.translationValues(-SizeConfig.screenWidth*0.06, 0, 0),
child:Text(this.subjectName,style: TextStyle(color: gc, fontWeight: FontWeight.w400,
fontSize:SizeConfig.screenWidth*0.05))),
actions: [
Row(children:[
IconButton(icon: Icon(Icons.notifications_none,color: gc),
onPressed: () {
}),
CircleAvatar(backgroundColor:Color(0xffA4A4A4),
//backgroundImage: (),
radius:SizeConfig.screenWidth*0.0862/2),//to pass the imageUrl
SizedBox(width:SizeConfig.screenWidth*0.025)
])
],
),
bottomNavigationBar: Bottom(),
floatingActionButton: Dial(),

body: Container(
color: Color(0xffE5E5E5),
child: Column(
children: [
SizedBox(height: SizeConfig.screenHeight * 0.034375),
Expanded(
child: SingleChildScrollView(
physics: BouncingScrollPhysics(),
child: ListView.builder(
physics: NeverScrollableScrollPhysics(),
shrinkWrap: true,
itemCount: 10,
itemBuilder: (BuildContext ctxt, int index) {
return Card(
margin: EdgeInsets.symmetric(
horizontal: SizeConfig.screenWidth * 0.04167,
vertical: SizeConfig.screenHeight* 0.0140625/2),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(
SizeConfig.b * 2)),
elevation: 5,
child:Container(
height:SizeConfig.screenHeight*0.078125,
width:SizeConfig.screenWidth*0.9167,
child:Row(
children: [
Container(
height:SizeConfig.screenHeight*0.078125,
width:  SizeConfig.screenWidth*0.1389,
decoration:BoxDecoration(
borderRadius: BorderRadius.only(topLeft:Radius.circular(SizeConfig.b * 2),
bottomLeft:Radius.circular(SizeConfig.b * 2) ),
color:index%3==0?gc:(index%3==1?bt:rc)),  
child:Icon(index%3==0?MdiIcons.clock:(index%3==1?Icons.picture_as_pdf:MdiIcons.youtube),color:Colors.white),
),
SizedBox(width:SizeConfig.screenWidth*0.089),
Container(
width:SizeConfig.screenWidth*0.67,  
child:Text(index%3==0?"Quiz":(index%3==1?"Topic of the PDF Topic of the PDF Topic of the PDF":"Video Lecture"),
//to define content type and its heading 
style:TextStyle(color:Colors.black,fontSize:SizeConfig.screenWidth*0.045)))
]
)
));
})))
],
)),
);
}
}


