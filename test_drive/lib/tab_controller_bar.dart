import 'package:flutter/material.dart';
import 'package:test_drive/tab_three.dart';
import 'package:test_drive/tab_two.dart';
import 'package:test_drive/tab_one.dart';

class TabControllerBar extends StatefulWidget {
  const TabControllerBar({super.key});

  @override
  State<TabControllerBar> createState() => _TabControllerBarState();
 
}

class _TabControllerBarState extends State<TabControllerBar> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        child: Scaffold(
            bottomNavigationBar: menu(context),
            body: const TabBarView(children: [
              Tab(child: TabOne()),
              Tab(child: TabTwo()),
              Tab(child: TabThree()),
            ])));
  }

  Widget menu(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              // color: Colors.blue, // Background color
              border: Border.all(
            color: Colors.black,
            width: 1,
          )),
          child: const TabBar(
            labelColor: Color(0xff154c79),
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 16),
            unselectedLabelStyle: TextStyle(fontSize: 14),
            // indicatorSize: TabBarIndicatorSize.tab,
            // indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.white,
            tabs: [
              Tab(child: Text('Tab1')),
              Tab(child: Text('Tab2')),
              Tab(child: Text('Tab3')),
            ],
          ),
        ));
  }
}
