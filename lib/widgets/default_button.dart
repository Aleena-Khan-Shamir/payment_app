import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton(
      {Key? key,
      required this.height,
      required this.width,
      required this.txt,
      required this.press})
      : super(key: key);
  int height;
  int width;
  String txt;
  final void Function() press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.toDouble(),
      width: width.toDouble(),
      child: ElevatedButton(
          onPressed: press,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white)),
          child: Text(
            txt,
            style: TextStyle(color: Colors.black, fontSize: 18),
          )),
    );
  }
}
