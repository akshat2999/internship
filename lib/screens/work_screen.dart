import 'package:flutter/material.dart';

class MyWork extends StatelessWidget {
  static const routeName = '/work_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff414040),
        title: Text('My Work'),
      ),
      body: Container(
        child: Text('2'),
      ),
    );
  }
}
