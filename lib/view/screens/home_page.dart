import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imtihon/core/size/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/icons/dogdom.svg',
          height: getUniqueH(100.0),
          width: getUniqueW(100.0),
        ),
      ),
    );
  }
}
