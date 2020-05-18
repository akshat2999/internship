import 'package:flutter/material.dart';

class Holiday extends StatelessWidget {
  static const routeName = '/holiday_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff414040),
        title: Text('My Holydays'),
      ),
      body: Container(
        child: Text('2'),
      ),
    );
  }
}
