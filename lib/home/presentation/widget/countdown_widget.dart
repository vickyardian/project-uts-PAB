import 'package:flutter/material.dart';
import 'dart:async';

class CountdownWidget extends StatefulWidget {
  const CountdownWidget({super.key});

  @override
  State<CountdownWidget> createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  Duration endTimer = Duration(hours: 1);
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        print("ulang");
        endTimer -= Duration(seconds: 1);
      });
    });
    //timer?.cancel();
  }

  String _doubleDigitParser(int digit) {
    if (digit < 10) {
      return "0$digit";
    } else {
      return "$digit";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      " ${_doubleDigitParser(endTimer.inHours)} : ${_doubleDigitParser(endTimer.inMinutes % 60)} : ${_doubleDigitParser(endTimer.inSeconds % 60)} ",
      style: TextStyle(
          fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
