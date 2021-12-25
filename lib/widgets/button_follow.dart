import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/colors.dart';
import 'package:imtihon/core/size/size_config.dart';

class Button extends StatelessWidget {
  String text;
  Button({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    SizeConfig().init(context);
    return Container(
      alignment: Alignment.center,
      height: getUniqueH(28.0),
      width: getUniqueW(70.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getUniqueW(4),
        ),
        color: MyColors.orange,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: MyColors.blue,
          fontSize: getUniqueW(12.0),
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
