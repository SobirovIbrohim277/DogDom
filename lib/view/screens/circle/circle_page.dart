import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon/core/constants/icons.dart';
import 'package:svg_icon/svg_icon.dart';

class CirclePage extends StatefulWidget {
  const CirclePage({Key? key}) : super(key: key);

  @override
  _CirclePageState createState() => _CirclePageState();
}

class _CirclePageState extends State<CirclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonBar(),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Text("Circle"),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(MyIcons.scan),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
