import 'package:flutter/material.dart';

class Kyc extends StatelessWidget {
  static const routeName = '/Kyc_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff414040),
        title: Text('My KYC'),
      ),
      body: Container(
        child: Text('2'),
      ),
    );
  }
}
