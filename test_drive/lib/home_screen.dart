import 'package:flutter/material.dart';
import 'package:test_drive/tab_controller_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text('Home screen'), MyButton()])));
  }
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});
  @override
  State<MyButton>  createState() => MyButtonState();
}

class MyButtonState extends State<MyButton> {
  bool isTappedDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      onTapDown: (tapDownDetails) {
        setState(() {
          isTappedDown = true;
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TabControllerBar()),
        );
      },
      onTapUp: (tapUpDetails) {
        setState(() {
          isTappedDown = false;
        });
      },
      child: Text(
        'Bypass login',
        style: TextStyle(
            color: isTappedDown ? Colors.black.withOpacity(0.5) : Colors.black),
      ),
    );
  }
}
