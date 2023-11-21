import 'package:flutter/material.dart';
import 'package:tasks/Screen/Add.dart';
import 'package:tasks/Screen/Homepag.dart';
import 'package:tasks/Screen/Alert.dart';
import 'package:tasks/Screen/Profile.dart';
import 'package:tasks/Screen/setting.dart';

import 'package:tasks/navbar.dart';

class Bottom_NavigationBar extends StatefulWidget {
  const Bottom_NavigationBar({super.key});

  @override
  State<Bottom_NavigationBar> createState() => _Bottom_NavigationBarState();
}

class _Bottom_NavigationBarState extends State<Bottom_NavigationBar> {
  int bottomindex = 2;

  onitemTap(int index) {
    setState(() {
      bottomindex = index;
    });
  }

  final widgetOptions = [Homepage(), Alert(), Add(), Setting(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(bottomindex),
      bottomNavigationBar: appnavbar(bottomindex, onitemTap),
    );
  }
}
