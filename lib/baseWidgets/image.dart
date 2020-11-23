import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Image.network(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        loadingBuilder: (context, child, progress) => (progress == null ? child : LinearProgressIndicator()),
        width: 300,
        height: 300,
        fit: BoxFit.cover,
        //color: Colors.red,
        //colorBlendMode: BlendMode.colorBurn,
        semanticLabel: '标签',
      ),
    );
  }
}
