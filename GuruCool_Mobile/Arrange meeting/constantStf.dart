import 'package:flutter/material.dart';

class Constant extends StatefulWidget {
  final String designation;
  final personNumber;
  final String personName;

  Constant(
      {@required this.designation,
      @required this.personName,
      @required this.personNumber});

  @override
  _ConstantState createState() => _ConstantState();
}

class _ConstantState extends State<Constant> {
  bool cw = false; // for up and down of grid

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Row(
          children: [
            cw == false
                ? Stack(children: [
                    overlapped(),
                    (widget.personNumber - 9 > 0)
                        ? Padding(
                            padding: EdgeInsets.fromLTRB(
                                9.0 * SizeConfig.screenWidth * 0.056, 0, 0, 0),
                            child: CircleAvatar(
                              child: Text(
                                  "+${(widget.personNumber - 9).toString()}"),
                              backgroundColor: Colors.purple,
                              radius: SizeConfig.screenWidth * 0.05,
                            ),
                          )
                        : Container(),
                  ])
                : Container(),
            Spacer(),
            Text(
              '${widget.personNumber} selected',
              style: TextStyle(
                color: Color(0xff848484),
                fontSize: SizeConfig.screenWidth * 0.03333,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.015625),
        cw == false
            ? InkWell(
                child: Icon(
                  !cw ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                  size: SizeConfig.screenWidth * 0.02778 * 2.5,
                  color: gcc,
                ),
                onTap: () {
                  setState(() {
                    cw = !cw;
                    print(cw);
                  });
                })
            : Container(),
        cw == true
            ? Container(
                color: Colors.white,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: SizeConfig.screenHeight * 0.015625 * 1.3,
                      crossAxisSpacing: SizeConfig.screenWidth * 0.02777778,
                    ),
                    padding: EdgeInsets.zero,
                    itemCount: widget.personNumber,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Column(children: [
                        Stack(alignment: Alignment.bottomRight, children: [
                          CircleAvatar(
                            radius: SizeConfig.screenWidth * 0.05,
                            backgroundColor: Colors.grey,
                          ),
                          InkWell(
                            child: Icon(
                              Icons.cancel,
                              color: Colors.red,
                              size: SizeConfig.screenWidth * 0.022278 * 2,
                            ),
                          ),
                        ]),
                        SizedBox(
                            height: SizeConfig.screenHeight * 0.015625 * 0.4),
                        Text(
                          widget.personName,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0389,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1c1c1c),
                          ),
                        ),
                        Text(
                          widget.designation,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.0333,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff515151),
                          ),
                        ),
                      ]);
                    }),
              )
            : Container(),
        cw == true
            ? InkWell(
                child: Icon(
                  !cw ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_up,
                  size: SizeConfig.screenWidth * 0.02778 * 2.5,
                  color: gcc,
                ),
                onTap: () {
                  setState(() {
                    cw = !cw;
                    print(cw);
                  });
                })
            : Container(),
      ],
    );
  }
}

Widget overlapped() {
  final overlap = SizeConfig.screenWidth * 0.056;
  List<CircleAvatar> amit = List<CircleAvatar>();
  for (int i = 0; i < 9; i++) {
    amit.add(CircleAvatar(
      child: Text((i + 1).toString()),
      backgroundColor: i % 2 == 0 ? Colors.red : Colors.blue,
      radius: SizeConfig.screenWidth * 0.05,
    ));
  }
  List<Widget> stackLayers = List<Widget>.generate(amit.length, (index) {
    return Padding(
      padding: EdgeInsets.fromLTRB(index.toDouble() * overlap, 0, 0, 0),
      child: amit[index],
    );
  });
  return Stack(children: stackLayers);
}
