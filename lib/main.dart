import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_dev_test/view/homepage.dart';
import 'package:go_dev_test/widgets/formCoffeRooms.dart';
import 'package:go_dev_test/widgets/formPersons.dart';
import 'package:go_dev_test/widgets/formRooms.dart';

void main() {
  runApp(GoDev());
}

class GoDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF6554A5),
        accentColor: Color(0xFF5523A5),
        buttonColor: Colors.red[600],
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.grey[700],
            fontSize: 50,
            fontWeight: FontWeight.w600,
          ),
          headline3: TextStyle(
            color: Colors.grey[700],
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
          headline5: TextStyle(
            color: Colors.grey[700],
            fontSize: 18,
          ),
          headline6: TextStyle(
            color: Colors.grey[500],
            fontSize: 14,
          ),
          button: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      title: 'GoDev Test',
      home: DefaultTabController(
        length: 3,
        child: Builder(
          builder: (BuildContext context) => Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home_work_outlined),
                    text: 'Salas',
                  ),
                  Tab(
                    icon: Icon(Icons.free_breakfast_outlined),
                    text: 'CoffeBreak',
                  ),
                  Tab(
                    icon: Icon(Icons.person_outline),
                    text: 'Pessoas',
                  ),
                ],
              ),
              title: Text('GoDev'),
            ),
            body: TabBarView(
              children: [
                HomePage(),
                HomePage(),
                HomePage(),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(
                Icons.add,
                size: 35,
              ),
              onPressed: () {
                showDialog(
                  barrierColor: Theme.of(context).primaryColor.withOpacity(0.5),
                  barrierDismissible: false,
                  context: context,
                  builder: (ctx) {
                    return DefaultTabController.of(context).index == 0
                        ? FormRooms()
                        : DefaultTabController.of(context).index == 1
                            ? FormCoffeRooms()
                            : FormPersons();
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
