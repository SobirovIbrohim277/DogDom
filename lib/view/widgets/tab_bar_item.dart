import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/view/widgets/text/my_text_regular.dart';

class TapBarItem extends StatelessWidget {
  final String image;
  final String text;
  const TapBarItem({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getUniqueW(125),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: getUniqueW(40.0),
          ),
          MyTextRegular(
            data: text,
            size: 13,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
