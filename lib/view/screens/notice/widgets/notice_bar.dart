import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon/core/constants/size_config.dart';

class NoticeBar extends StatelessWidget {
  const NoticeBar({Key? key, this.imgOfIcons, this.nameOfIcons})
      : super(key: key);
  final imgOfIcons;
  final nameOfIcons;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getUniqueW(16.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imgOfIcons),
          SizedBox(height: getUniqueH(8.0)),
          Text(
            nameOfIcons,
            style: const TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
