import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedDropDown extends StatefulWidget {
  const AnimatedDropDown({super.key});

  @override
  State<AnimatedDropDown> createState() => _AnimatedDropDownState();
}

class _AnimatedDropDownState extends State<AnimatedDropDown> {
  bool isDroppedDown = false;
  double _height = 0;

  void dropDownToggle() {
    setState(() {
      isDroppedDown = !isDroppedDown;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey, // Background color
          borderRadius: BorderRadius.circular(16), // Rounded corners
        ),
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(8),
        height: 200,
        width: 300,
        child: SizedBox(
            width: 200,
            height: 150,
            child: Column(children: <Widget>[
              Container(
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.white, // Background color
                ),
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isDroppedDown = !isDroppedDown;
                      _height = isDroppedDown ? 150.toDouble() : 0;
                    });
                  },
                  child: Text(
                    isDroppedDown ? 'On' : 'Off',
                    style: const TextStyle(color: Colors.black),
                  ),
                )),
              ),
              AnimatedContainer(
                width: 200,
                height: _height,
                duration: const Duration(seconds: 1),
                // curve: Curves.fastOutSlowIn,
                decoration: const BoxDecoration(
                  color: Colors.purple, // Background color
                ),
              )
            ])));
  }
}
