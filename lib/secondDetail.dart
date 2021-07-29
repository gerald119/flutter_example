import 'package:flutter/material.dart';

class SecondDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('상품 구매 페이지(second)'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/third');
            },
            child: Text('결제하기'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.backspace),
      ),
    );
  }
}
