import 'package:flutter/material.dart';

class ReportTable extends StatelessWidget {
  const ReportTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: const TableBorder(
        top: BorderSide(color: Colors.black),
        bottom: BorderSide(color: Colors.black),
        right: BorderSide(color: Colors.black),
        left: BorderSide(color: Colors.black),
        horizontalInside: BorderSide(color: Colors.black),
        verticalInside: BorderSide(color: Colors.black),
      ),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const [
        TableRow(children: [
          TableCell(child: Center(child: Text('Major'))),
          TableCell(child: Center(child: Text('Total Students'))),
          TableCell(child: Center(child: Text('Total English'))),
          TableCell(child: Center(child: Text('Total Math'))),
        ]),
        TableRow(children: [
          TableCell(child: Center(child: Text('Computer Science'))),
          TableCell(child: Center(child: Text('500'))),
          TableCell(child: Center(child: Text('500'))),
          TableCell(child: Center(child: Text('0'))),
        ]),
      ],
    );
  }
}
