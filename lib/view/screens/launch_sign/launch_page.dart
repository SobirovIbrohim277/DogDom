import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/icons.dart';
import 'package:imtihon/core/constants/imports.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/view/screens/launch_sign/sign_page.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Timer(const Duration(seconds: 3), () {
      _setNavigator(const SignPage(), context);
    });

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Container(
            child: SvgPicture.asset(
              MyIcons.textLogo,
              width: getUniqueW(144.0),
              height: getUniqueH(53.0),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: getUniqueH(4.0)),
          ),
        ],
      ),
    );
  }

  void _setNavigator(Widget page, BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => page),
    );
  }
}
