import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        RaisedButton(
          child: Text('show date picker'),
          onPressed: () async {
            var result = await showDatePicker(
                context: context,
                builder: (context, child) {
                  return Theme(
                    data: ThemeData.dark(),
                    child: child,
                  );
                },
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2021),
                // selectableDayPredicate参数控制可选日期，返回true表示日期可选，用法如下：
                selectableDayPredicate: (DateTime day) {
                  return day.difference(DateTime.now()).inDays < 2;
                });
            print('$result');
          },
        ),
        RaisedButton(
          child: Text('show time picker'),
          onPressed: () async {
            showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(alwaysUse24HourFormat: true),
                  child: child,
                );
              }); 
          },
        )
      ],
    ));
  }
}
