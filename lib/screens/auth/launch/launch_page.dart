import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon/core/constants/icons.dart';
import 'package:imtihon/core/size/size_config.dart';
import 'package:imtihon/screens/auth/login_page/login_page.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Timer(
      const Duration(seconds: 3),
      () {
        _setNextPage( SignInPage(), context);
      },
    );

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Container(
            child: SvgPicture.asset(
              MyIcons.textlogo,
              width: getUniqueW(144.0),
              height: getUniqueH(53.0),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              bottom: getUniqueH(9.0),
            ),
          ),
        ],
      ),
    );
  }

  void _setNextPage(Widget page, BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => page),
    );
  }
}
