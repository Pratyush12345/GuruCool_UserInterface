import 'package:flutter/material.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import './utils/sizeConfig.dart';

void main() {
runApp(MyApp());
}

final bgColor = Color(0xffE5E5E5);

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
theme: ThemeData(
visualDensity: VisualDensity.adaptivePlatformDensity,
),
home: Branches(branchName:"Lucknow Public School",instituteCounts:5,schoolName: "Central Public School",
schoolCode:100101,address: "Link road, park building, Partparganj, New Delhi"));
}
}

class Branches extends StatelessWidget {
final String schoolName;
final int instituteCounts;
final String address;
final String branchName;
final int schoolCode;

Branches(
{@required this.schoolName,
@required this.instituteCounts,
@required this.address,
@required this.schoolCode,
@required this.branchName,
});

@override
Widget build(BuildContext context) {
SizeConfig().init(context);
return Scaffold(
backgroundColor: bgColor,
body: ExpandableBottomSheet(
background: SafeArea(
child: Column(children: [
Container(
height: SizeConfig.screenHeight * 0.267,
child: Stack(children: [
Container(
decoration: BoxDecoration(
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(0.4),
spreadRadius: SizeConfig.b * 0.7,
blurRadius: SizeConfig.b * 1.5,
offset: Offset(2, 2))
],
gradient: LinearGradient(
begin: Alignment.topCenter,end: Alignment.bottomCenter,
colors: [Color(0xff2E3842),Color(0xff4E7391),])),
height: SizeConfig.screenHeight * 0.177,
child: Stack(
children: [
Positioned(
left: SizeConfig.screenWidth * 0.189,
child: ClipPath(
child: Container(
width: SizeConfig.screenWidth * 0.811,
height: SizeConfig.screenHeight * 0.125,
color: Color(0xffF36C24),
),
clipper: ClipContainer(),
)),
Positioned(
right: SizeConfig.screenWidth * 0.04,
top: SizeConfig.screenHeight * 0.015,
child: Card(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(100)),
elevation: 10,
child: CircleAvatar(
radius: SizeConfig.screenWidth * 0.07))),
Positioned(
left: SizeConfig.screenWidth * 0.03611,
top: SizeConfig.screenHeight * 0.065,
child: Container(
width: SizeConfig.screenWidth * 0.5,
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(this.branchName,style: TextStyle(color: Colors.white,fontSize: SizeConfig.b * 3.89,fontWeight: FontWeight.w700)),
SizedBox(height: 3),
Text("Total Institutes : ${this.instituteCounts}",style: TextStyle(color: Colors.white,fontSize: SizeConfig.b * 3,fontWeight: FontWeight.w400))
],
))),
],
),
),
Positioned(
left: SizeConfig.screenWidth * 0.0833,
top: SizeConfig.screenHeight * 0.15,
child: Container(
width: SizeConfig.screenWidth * 0.84,
decoration: BoxDecoration(
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(0.5),
spreadRadius: SizeConfig.b * 0.7,
blurRadius: SizeConfig.b * 1.5,
offset: Offset(2, 2))
],
color: Colors.white,
borderRadius: BorderRadius.circular(SizeConfig.b * 7)),
child: Container(
padding:
EdgeInsets.symmetric(vertical: SizeConfig.v * 0.2),
child: Row(children: [
SizedBox(width: SizeConfig.b * 2),
Icon(Icons.search, color: Color(0xffF36C24)),
SizedBox(width: SizeConfig.b * 2.5),
Container(
width: SizeConfig.screenWidth * 0.64,
child: TextField(
maxLines: 1,
//controller: _searchInputController,
decoration: InputDecoration(
border: InputBorder.none,
hintText:
'Search by Branch code, Name and Address',
isDense: true,
hintStyle: TextStyle(fontSize: SizeConfig.b * 3,color: Color(0xff848484),fontWeight: FontWeight.w400)),
),
)
]),
),
),
)
])),
Expanded(
child: SingleChildScrollView(
physics: BouncingScrollPhysics(),
child: ListView.builder(
shrinkWrap: true,
physics: NeverScrollableScrollPhysics(),
padding: EdgeInsets.zero,
itemCount: 5,
itemBuilder: (BuildContext ctxt, int index) {
return Column(children: [
Card(
elevation: 5,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10)),
child: InkWell(
onTap: () {
print('Hello');
},
child: Container(
width: SizeConfig.screenWidth * 0.89,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
),
child: Row(children: [
Container(
width: SizeConfig.screenWidth * 0.184,
height:
SizeConfig.screenHeight * 0.125,
decoration: BoxDecoration(
borderRadius: BorderRadius.only(
topLeft: Radius.circular(10),
bottomLeft: Radius.circular(10),
),
gradient: LinearGradient(
begin: Alignment.topCenter,
end: Alignment.bottomCenter,
colors: [
Color(0xff445261),
Color(0xFF23619F),
])),
alignment: Alignment.center,
child: Text(this.schoolCode.toString(),
style: TextStyle(color: Colors.white,
fontSize:SizeConfig.screenWidth *0.045,fontWeight:FontWeight.w700))),
SizedBox(width: SizeConfig.b * 5),
Container(
width: SizeConfig.screenWidth * 0.6,
child: Column(
mainAxisAlignment: MainAxisAlignment.start,  
crossAxisAlignment:CrossAxisAlignment.start,
children: [
Text(this.schoolName,style: TextStyle(fontSize: SizeConfig.screenWidth *0.045,fontWeight:FontWeight.w500)),
Text(this.address,style: TextStyle(fontSize: SizeConfig.screenWidth *0.031,fontWeight:FontWeight.w400)),

]))
])),
)),
SizedBox(height: SizeConfig.screenHeight * 0.025),
]);
})))
])),
persistentHeader: Container(
width: SizeConfig.screenWidth * 1,
decoration: BoxDecoration(
color: Color(0xff2E3842),
borderRadius: BorderRadius.only(
topRight: Radius.circular(10), topLeft: Radius.circular(10))),
height: SizeConfig.screenWidth * 0.056,
child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
Container(
width: SizeConfig.screenWidth * 0.076,
height: SizeConfig.v * 0.33,
decoration: BoxDecoration(
color: Colors.white, borderRadius: BorderRadius.circular(2)),
)
]),
),
expandableContent: Container(
height: SizeConfig.screenHeight * 0.61,
color: Colors.white,
child: Center(
child: Text('Content'),
),
),
),
);
}
}

class ClipContainer extends CustomClipper<Path> {
@override
Path getClip(Size size) {
var path = new Path();
path.lineTo(size.width, 0);
path.lineTo(size.width, size.height);
path.close();

return path;
}

@override
bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
return false;
}
}
