import 'package:flutter/material.dart';

class Complaints extends StatelessWidget {
  static const routeName = '/complaints_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff414040),
        title: Text('Complaints'),
      ),
      body: Container(
        child: Text('2'),
      ),
    );
  }
}
