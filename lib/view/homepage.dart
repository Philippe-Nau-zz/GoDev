import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GoDev'),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Color(0xFF54342384),
      ),
    );
  }
}
