import 'package:flutter/material.dart';
import 'package:go_dev_test/widgets/itemListview.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => ItemListView(),
      ),
    );
  }
}
