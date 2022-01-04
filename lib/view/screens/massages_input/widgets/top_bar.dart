import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon/core/constants/size_config.dart';

class TopBarMassageInput extends StatelessWidget {
  const TopBarMassageInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(
        right: getUniqueW(18.0),
        left: getUniqueW(10.0),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_rounded),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage("assets/massagesImg/4.png"),
            backgroundColor: Colors.transparent,
            radius: 15,
          ),
          SizedBox(
            width: getUniqueW(10.0),
          ),
          const Text(
            "Clementine",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.phone_outlined,
            size: 29.0,
          ),
          SizedBox(width: getUniqueW(20.0)),
          RotatedBox(
            quarterTurns: 1,
            child: SvgPicture.asset(
              "assets/icons/More_1.svg",
            ),
          ),
        ],
      ),
    );
  }
}
