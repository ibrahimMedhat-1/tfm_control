import 'package:flutter/material.dart';

class ExamSheetsTable extends StatelessWidget {
  const ExamSheetsTable({
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
          TableCell(child: Center(child: Text('Code'))),
          TableCell(child: Center(child: Text('Course'))),
          TableCell(child: Center(child: Text('Date'))),
          TableCell(child: Center(child: Text('Time'))),
          TableCell(child: Center(child: Text("Place"))),
          TableCell(child: Center(child: Text('Seat Number'))),
          TableCell(child: Center(child: Text('Committee'))),
        ])
      ],
    );
  }
}
