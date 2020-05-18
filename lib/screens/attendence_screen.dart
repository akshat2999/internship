import 'package:flutter/material.dart';

class Attendence extends StatelessWidget {
  static const routeName = '/attendence_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff414040),
        title: Text('My Attendence'),
      ),
      body: Container(
        child: Text('2'),
      ),
    );
  }
}
