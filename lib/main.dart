import 'dart:math';

import 'package:flutter/material.dart';

import 'ctext.dart';
import 'btn.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _news = [
    '潛水美魔女找到了！失聯60天　北市旅館現蹤怨：母找人方式太激烈',
    '菲空姐多人趴慘死「下體撕裂留精」　驗屍結果曝！死因竟不是性侵',
    '哈孝遠台中牽手長髮妹被目擊！　正宮認了「真的不是我」揭真相'
  ];
  reset() {
    setState(() {
      _index = 0;
    });
  }

  changeText() {
    setState(() {
      print(_index);
      print(_news.length);
      if (_index < _news.length - 1) {
        _index = _index + 1;
        print('more');
      } else {
        print('the end!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('最新消息'),
          ),
          body: Container(
            width: double.infinity,
            margin: EdgeInsets.all(80.0),
            child: Column(children: <Widget>[
              Ctext(_news[_index]),
              Btn('點選更多', changeText),
              Btn('重新開始', reset),
              Ctext(!(_index < _news.length - 1) ? 'done!' : '')
            ]),
          )),
    );
  }
}
