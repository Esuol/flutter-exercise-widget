import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const int numItems = 10;
  List<bool> selected = List<bool>.generate(numItems, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text('Number'),
          ),
        ],
        rows: List<DataRow>.generate(
          numItems,
          (index) => DataRow(
            color: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              // All rows will have the same selected color.
              if (states.contains(MaterialState.selected))
                return Theme.of(context).colorScheme.primary.withOpacity(0.08);
              // Even rows will have a grey color.
              if (index % 2 == 0) return Colors.grey.withOpacity(0.3);
              return null; // Use default value for other states and odd rows.
            }),
            cells: [DataCell(Text('Row $index'))],
            selected: selected[index],
            onSelectChanged: (bool value) {
              setState(() {
                selected[index] = value;
              });
            },
          ),
        ),
      ),
    );
  }
}