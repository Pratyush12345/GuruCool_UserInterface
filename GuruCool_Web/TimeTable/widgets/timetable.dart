//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_table/SizeConfig.dart';
import 'package:flutter_table/ttcontainer.dart';
import 'package:table_sticky_headers/table_sticky_headers.dart';

class Screen1 extends StatelessWidget {
  final int columns;
  final int rows;
  Screen1({@required this.columns, @required this.rows});

  final List<List<Widget>> output = [];
  // for (int i = 0; i < columns; i++) {
  //   final List<Widget> row = [];
  //   for (int j = 0; j < rows; j++) {
  //     row.add(SingleContainer());
  //   }
  //   output.add(row);
  // }

  /// Simple generator for column title
  final List<Widget> titleColumn = List.generate(
    6,
    (i) =>
        // Container(
        //   height: 100.0,
        //   width: 145.0,
        //   child: Text(
        //     'abc',
        //     //style: TextStyle(fontSize: 200.0),
        //   ),
        // ),
        ColumnContainer(
      day: 'Sunday',
    ),
  );

  /// Simple generator for row title
  final List<Widget> titleRow = List.generate(
      5,
      (i) =>
          // Container(
          //   height: 100.0,
          //   width: 145.0,
          //   child: Text(
          //     'abe',
          //     //style: TextStyle(fontSize: 200.0),
          //   ),
          // )
          RowContainer(
            startTime: '10:00 am',
            endTime: '10:00 am',
          ));
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    for (int i = 0; i < columns; i++) {
      final List<Widget> row = [];
      for (int j = 0; j < rows; j++) {
        row.add(SingleContainer(
          lab: false,
          teacher: 'Mr Ayush Kumar',
          subject: 'Maths',
        )
            //     Container(
            //   height: 100.0,
            //   width: 145.0,
            //   child: Text(
            //     'abd',
            //     //style: TextStyle(fontSize: 200.0),
            //   ),
            // )
            );
      }
      output.add(row);
    }
    return
        //Scaffold(
        // backgroundColor: Color(0xffE5E5E5),
        //body:
        Container(
      height: SizeConfig.screenHeight * 550 / 900,
      width: SizeConfig.screenWidth * 1100 / 1440,
      //padding: EdgeInsets.all(10.0),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      //   border: Border.all(
      //     color: Colors.black,
      //     //Color(0xffF36C24),
      //     width: 0.5,
      //   ),
      // ),
      child: StickyHeadersTable(
        cellDimensions: CellDimensions(
          contentCellHeight: //100.0,
              SizeConfig.screenHeight * 100 / 900,
          contentCellWidth: //145.0,
              SizeConfig.screenWidth * 150 / 1440,
          stickyLegendWidth: //145.0,
              SizeConfig.screenWidth * 150 / 1440,
          stickyLegendHeight: //100.0
              SizeConfig.screenHeight * 100 / 900,
        ),
        //cellFit: BoxFit.fill,
        columnsLength: titleColumn.length,
        rowsLength: titleRow.length,
        columnsTitleBuilder: (i) => titleColumn[i],
        rowsTitleBuilder: (i) => titleRow[i],
        contentCellBuilder: (i, j) => output[i][j],
        legendCell:
            // Container(
            //   height: 100.0,
            //   width: 145.0,
            //   child: Text(
            //     'abd',
            //     //style: TextStyle(fontSize: 200.0),
            //   ),
            // )
            ColumnContainer(
          day: 'Time',
        ),
      ),
      //),
    );
  }
}
