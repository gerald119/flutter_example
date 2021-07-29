import 'package:flutter/material.dart';
import 'package:todo_list/subDetail.dart';
import 'package:todo_list/secondDetail.dart';
import 'package:todo_list/thirdPage.dart';

import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Widget Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondDetail(),
        '/third': (context) => ThirdDetail(),
        '/sub': (context) => SubDetail(),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('main Page'),
      ),
      body: Container(
        child: Center(
          child: FloatingActionButton(
            onPressed: () {
              // Navigator.of(context).pushNamed('/sub');
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => SecondDetail()));
              Navigator.of(context).pop();
            },
            child: Text('상품 보기'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/second');
        },
        child: Icon(Icons.get_app),
      ),
    );
  }
}
