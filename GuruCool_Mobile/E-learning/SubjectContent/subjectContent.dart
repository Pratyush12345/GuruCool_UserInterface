import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qwe/utils/Colors.dart';
import 'package:qwe/utils/bottom.dart';
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
home: SubjectContent(subjectName:"Mathematics"));
}
}
class SubjectContent extends StatelessWidget {
final String courseId;
final String contentType;
final passKey;
final String subjectName;
final String imgCollegeUrl;
SubjectContent({
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
icon: Icon(
Icons.menu,
color: Color(0xffF36C24),
),
onPressed: () {
print('Show menu');
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
floatingActionButton: FloatingActionButton(
child: Icon(Icons.add,size: SizeConfig.screenWidth * 0.0486*1.5),
backgroundColor: gc,
onPressed: () {
showSubjectDialogueBox(context);
}),
body: Container(
color: Color(0xffFFFFFF),
child: Column(
children: [
SizedBox(height: SizeConfig.screenHeight * 0.03125),
Row(
mainAxisAlignment: MainAxisAlignment.center,  
children:[
Container(
height:SizeConfig.screenHeight*0.046875,
width:SizeConfig.screenWidth*0.611,
decoration: BoxDecoration(
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(0.1),
offset: Offset(
0.0,1.5),
spreadRadius: SizeConfig.b * 0.4,
blurRadius: SizeConfig.b * 0.5,
)
],
color:Color(0xffF6F6F6),
borderRadius:BorderRadius.circular(20),  
),
child:Row(children:[
SizedBox(width:SizeConfig.b*2),  
Icon(Icons.search, color: Color(0xffF36C24)),  
SizedBox(width:SizeConfig.b*2),  
Container(
padding:EdgeInsets.symmetric(horizontal: SizeConfig.b*1,vertical:SizeConfig.v*0),   
width:SizeConfig.screenWidth*0.5,  
child:TextField(
textInputAction: TextInputAction.search,  
keyboardType: TextInputType.text,  
maxLines:1, 
style:TextStyle(
fontSize: SizeConfig.b * 3.5,
fontWeight: FontWeight.w400), 
//controller: _searchInputController,
decoration: InputDecoration(
border: InputBorder.none,
hintText: 'Search Subject',
isDense: true,
hintStyle: TextStyle(
fontSize: SizeConfig.b * 3.3,
color:Color.fromRGBO(140, 140, 140, 0.71),
fontWeight: FontWeight.w400)),
),
)
]), 
),
SizedBox(width:SizeConfig.screenWidth*0.039),
Container(
 padding:EdgeInsets.symmetric(horizontal:SizeConfig.screenWidth*0.0125), 
height:SizeConfig.screenHeight*0.045,
width:SizeConfig.screenWidth*0.26,
decoration: BoxDecoration(
color:gc,
borderRadius:BorderRadius.circular(SizeConfig.screenWidth*0.1),  
),
child:MaterialButton(
padding: EdgeInsets.zero,
onPressed: null,
child:Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children:[
Icon(MdiIcons.youtube,color:Colors.white,size:SizeConfig.screenWidth*0.05), 
Text("Live Session",style:TextStyle(color:Colors.white,fontSize:SizeConfig.screenWidth*0.0278)) 
])
)
)
]),
SizedBox(height: SizeConfig.screenHeight * 0.040625),
Expanded(
child: SingleChildScrollView(
physics: BouncingScrollPhysics(),
child: ListView.builder(
physics: NeverScrollableScrollPhysics(),
shrinkWrap: true,
itemCount: 10,
itemBuilder: (BuildContext ctxt, int index) {
return Container(
margin:EdgeInsets.symmetric(horizontal:SizeConfig.screenWidth*0.056),
child:Column(
crossAxisAlignment: CrossAxisAlignment.end,  
children:[
Row(children:[
Container(
height:SizeConfig.screenHeight*0.055,
width:SizeConfig.screenWidth*0.1389,
decoration:BoxDecoration(
color:index%2==0?Color.fromRGBO(243, 108, 36, 0.7):tc,
borderRadius: BorderRadius.circular(3),
),
alignment: Alignment.center,
child:Text("CH 1",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w700),
)),
SizedBox(width:SizeConfig.screenWidth*0.042),
Container(
width:SizeConfig.screenWidth*0.7,  
child:Column(
crossAxisAlignment: CrossAxisAlignment.start,  
children:[
Text("Subject Name",style:TextStyle(fontSize:SizeConfig.screenWidth*0.045)),  
]))
]),
Container(
width:SizeConfig.screenWidth*0.711,    
child:Divider(color:Color(0xff515151))),
SizedBox(height:SizeConfig.screenHeight*0.03125/2), 
])
);
})))
],
)),
);
}
}
void showSubjectDialogueBox(BuildContext context) {
showDialog(
context: context,
builder: (BuildContext context) {
return Dialog(
insetPadding: EdgeInsets.all(SizeConfig.screenWidth * 0.0833),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(SizeConfig.b * 2),
),
child:Column(
mainAxisSize: MainAxisSize.min,
children:
[
Container(
margin: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight*0.0266),
padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth *0.04722),
child: Column(
children: [
TextField(
decoration: InputDecoration(
isDense: true,
contentPadding: EdgeInsets.only(left: SizeConfig.b * 2.6,top: SizeConfig.v,bottom: SizeConfig.v),
border: OutlineInputBorder(),
hintText: 'Subject Name',
focusedBorder: OutlineInputBorder(
borderSide: BorderSide(color: Color(0xff515151))),
hintStyle: TextStyle(
color: Color(0xff848484),
fontSize: SizeConfig.b * 3.95,
fontWeight: FontWeight.w400,
letterSpacing: SizeConfig.b * 0.037)),
maxLines: null,
),
SizedBox(
height: SizeConfig.screenHeight * 0.0265,
),
Row(
mainAxisAlignment: MainAxisAlignment.end,
children: [
MaterialButton(
elevation:5,  
color:gc,
padding: EdgeInsets.zero,
onPressed: () {},
minWidth: SizeConfig.screenWidth * 0.25,
shape: RoundedRectangleBorder(
borderRadius:BorderRadius.circular(SizeConfig.b * 1.4)),
child: Text('Add',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,
fontSize: SizeConfig.screenWidth * 0.039),),
)
],
)
],
),
),
]
)
);
});
}