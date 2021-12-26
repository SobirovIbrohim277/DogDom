import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/colors.dart';
import 'package:imtihon/core/size/size_config.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeSelectPage extends StatefulWidget {
  const HomeSelectPage({Key? key}) : super(key: key);

  @override
  State<HomeSelectPage> createState() => _HomeSelectPageState();
}

class _HomeSelectPageState extends State<HomeSelectPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: getUniqueH(44.0)),
              height: getUniqueH(49.76),
              width: getUniqueW(375.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ToggleSwitch(
                    initialLabelIndex: 0,
                    totalSwitches: 2,
                    labels: ['Select', 'Discover'],
                    onToggle: (index) {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
