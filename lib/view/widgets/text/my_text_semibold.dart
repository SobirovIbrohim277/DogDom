import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/size_config.dart';

class MyTextSemibold extends StatelessWidget {
  final String data;
  final double size;
  Color? color;
  TextAlign? textAlign;

  MyTextSemibold(
      {required this.data,
      required this.size,
      this.textAlign,
      this.color,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: getUniqueW(size),
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
