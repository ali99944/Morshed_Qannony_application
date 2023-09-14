import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtons extends StatelessWidget {
  double? padding;
  CustomButtons(
      {super.key,
      required this.text,
      this.onpress,
        this.padding,
      required this.color,
      required this.text_color});
  final String text;
  void Function()? onpress;
  final Color color;
  final Color text_color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: .75 * MediaQuery.of(context).size.width,
      color: color,
      padding: EdgeInsets.all(padding ?? 0),
      shape: const StadiumBorder(),
      onPressed: onpress ?? () {},
      child: Text(
        text,
        style: TextStyle(color: text_color),
      ),
    );
  }
}
