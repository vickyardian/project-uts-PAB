import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String? label;
  final String imageLocation;
  const MenuButton(this.imageLocation, {super.key, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 40,
      child: Column(
        children: [
          Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: Image.asset(imageLocation)),
          Text(
            "$label",
            style: TextStyle(color: Colors.black, fontSize: 10),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
