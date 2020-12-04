// install packages

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

/// flutter packages get
///
/// flutter pub get
///
///Running "flutter packages get " in flutter_in_Acion.....
///Process finished with exit code 0
///
///引入 english——words包
///
///import 'packega:english_words/english_words.dart'
///
///使用 english_words 包来生成随机字符串

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 生成随机字符串
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}
