import 'package:flutter/material.dart';
import 'package:qwe/utils/Colors.dart';
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

class Subject extends StatelessWidget {
  final String sub;
  final String teacher;
  final String courseId;
  final passKey; 
  final String schoolName;

  Subject({
    @required this.sub,
    @required this.teacher,
    @required this.courseId,
    @required this.passKey,
    @required this.schoolName,
  });

final TextEditingController _searchInputController = TextEditingController();
@override
Widget build(BuildContext context) {
SizeConfig().init(context);
return Container(
color: Color(0xffE5E5E5),
child: Column(
children: [
SizedBox(height: SizeConfig.screenHeight* 0.03125),
Container(
width: SizeConfig.screenWidth * 0.84,
decoration: BoxDecoration(
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(0.1),
offset: Offset(
0.0,5.0),
spreadRadius: SizeConfig.b * 0.2,
blurRadius: SizeConfig.b * 0.5,
)
],
color: Colors.white,
borderRadius:BorderRadius.circular(SizeConfig.b * 7)),
child: Row(children:[
SizedBox(width:SizeConfig.b*2),  
Icon(Icons.search, color: gc),  
SizedBox(width:SizeConfig.b*2),  
Container(
padding:EdgeInsets.symmetric(horizontal: SizeConfig.b*1,vertical:SizeConfig.v*0.2),   
width:SizeConfig.screenWidth*0.66,  
child:TextField(
textInputAction: TextInputAction.search,  
keyboardType: TextInputType.text,  
maxLines:1, 
controller: _searchInputController,
decoration: InputDecoration(
border: InputBorder.none,
hintText: 'Search subject by their name',
isDense: true,
hintStyle: TextStyle(
fontSize: SizeConfig.b * 3.3,
color:Color.fromRGBO(140, 140, 140, 0.71),
fontWeight: FontWeight.w400)),
),
)
]),
),
SizedBox(height: SizeConfig.screenHeight* 0.03125),
Expanded(
child: SingleChildScrollView(
physics: BouncingScrollPhysics(),
child: ListView.builder(
physics: NeverScrollableScrollPhysics(),
shrinkWrap: true,
itemCount: 10,
itemBuilder: (BuildContext ctxt, int index) {
return Card(
margin: EdgeInsets.only(right: SizeConfig.screenWidth * 0.0277,left:SizeConfig.screenWidth * 0.0277,
top:index!=0? SizeConfig.screenHeight * 0.03125/2:0,bottom:SizeConfig.screenHeight * 0.03125/2),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(
SizeConfig.b * 2.5)),
elevation: 7,
child:Container(
padding:EdgeInsets.symmetric(horizontal:SizeConfig.screenWidth*0.07,vertical:SizeConfig.screenHeight*0.022),
height:SizeConfig.screenHeight*0.1703,
decoration:BoxDecoration(
borderRadius: BorderRadius.circular(
SizeConfig.b * 2.5),
color:index%2==0?Color(0xffFF925C):Color(0xff474C51),
),
child:
Row(children:[
Column(
crossAxisAlignment: CrossAxisAlignment.start, 
children:[  
Text(this.sub,style:TextStyle(fontWeight: FontWeight.w400,color:Colors.white,
fontSize:SizeConfig.screenWidth*0.0567)),
SizedBox(height:SizeConfig.v*2.2),  
Row(children:[
Icon(Icons.person,color:Colors.white,size:SizeConfig.b*3.4),  
SizedBox(width:SizeConfig.b*2),
Text(this.teacher,style:TextStyle(fontWeight: FontWeight.w400,color:Colors.white,
fontSize:SizeConfig.screenWidth*0.0567/2)),
]),
SizedBox(height:3),
Row(children:[
Icon(Icons.person,color:Colors.white,size:SizeConfig.b*3.4),  
SizedBox(width:SizeConfig.b*2),
Text(this.teacher,style:TextStyle(fontWeight: FontWeight.w400,color:Colors.white,
fontSize:SizeConfig.screenWidth*0.0567/2)),
]),
SizedBox(height:3),
Row(children:[
Icon(Icons.person,color:Colors.white,size:SizeConfig.b*3.4),  
SizedBox(width:SizeConfig.b*2),
Text(this.teacher,style:TextStyle(fontWeight: FontWeight.w400,color:Colors.white,
fontSize:SizeConfig.screenWidth*0.0567/2)),
]),
]),
Spacer(),
index%2==0?Image.asset('images/o.png'):Image.asset('images/p.png'),  
])
)
);
})))
],
));
}
}