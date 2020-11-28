import 'package:flutter/material.dart';

class RadioScreenState extends StatefulWidget {
  RadioScreenState({Key key}) : super(key: key);

  @override
  _RadioState createState() => _RadioState();
}

class _RadioState extends State<RadioScreenState> {
  String groupValue;
  String valueLiu;
  String valueZhang;
  String valueGuo;
  String valueLi;

  @override
  void initState() {
    super.initState();
    groupValue = "刘德华";
    valueLiu = "刘德华";
    valueZhang = "张学友";
    valueGuo = "郭富城";
    valueLi = "黎明";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Radio<String>(
          // 此 Radio 的 value 值
          value: valueLiu,
          // 当选择此 radio 的时候 的回调。 参数就是 此 value 的值
          onChanged: (value) => {
            setState(() {
              print('vaule $value');
              groupValue = value;
            })
          },
          // 如果 Radio 的 value 和 groupValue 一样 就 是此 Radio 选中 其他 设置为 不选中
          groupValue: groupValue,
          // 选中的颜色
          activeColor: Colors.red,
          // 响应手势的大小 ， 默认是 48 * 48
          // MaterialTapTargetSize.shrinkWrap 水波纹 在中间
          // MaterialTapTargetSize.padded  水波纹 靠左上
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        Radio(
          value: valueGuo,
          onChanged: (value) => {
            setState(() {
              print('vaule $value');
              groupValue = value;
            })
          },
          groupValue: groupValue,
          activeColor: Colors.red,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        Radio(
          value: valueZhang,
          onChanged: (value) => {
            setState(() {
              print('vaule $value');
              groupValue = value;
            })
          },
          groupValue: groupValue,
          activeColor: Colors.red,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        Radio(
          value: valueLi,
          onChanged: (value) => {
            setState(() {
              print('vaule $value');
              groupValue = value;
            })
          },
          groupValue: groupValue,
          activeColor: Colors.red,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        SizedBox(
          height: 40.0,
        ),
        Text('RadioList'),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile<String>(
              title: Text(valueLiu),
              value: valueLiu,
              groupValue: groupValue,
              activeColor: Colors.red,
              subtitle: Text('副标题'),
              isThreeLine: false,
              dense: false,
              selected: true,
              controlAffinity: ListTileControlAffinity.leading,
            ),
            RadioListTile<String>(
                title: Text(valueZhang), value: valueZhang, groupValue: groupValue, onChanged: _changed),
            RadioListTile<String>(title: Text(valueGuo), value: valueGuo, groupValue: groupValue, onChanged: _changed),
            RadioListTile<String>(title: Text(valueLi), value: valueLi, groupValue: groupValue, onChanged: _changed),
          ],
        )
      ],
    );
  }

  void _changed(value) {
    groupValue = value;
    setState(() {});
  }
}
