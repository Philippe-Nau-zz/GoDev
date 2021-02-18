import 'package:flutter/material.dart';
import 'package:go_dev_test/view/homepage.dart';

void main() {
  runApp(GoDev());
}

class GoDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoDev Test',
      home: HomePage(),
    );
  }
}
