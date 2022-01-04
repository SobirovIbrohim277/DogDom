import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon/core/constants/icons.dart';
import 'package:imtihon/core/constants/size_config.dart';

buildNoticeTopBar() => Container(
      alignment: Alignment.center,
      height: getUniqueH(175.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(154, 20),
        ),
        color: Color.fromRGBO(250, 102, 80, 1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getUniqueW(18.0),
        ),
        child: Column(
          children: [
            SizedBox(height: getUniqueH(62.0)),
            Row(
              children: [
                const Text(
                  "Message",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  MyIcons.scan,
                  color: Colors.white,
                ),
                SizedBox(width: getUniqueW(25.0)),
                SvgPicture.asset(
                  MyIcons.searchBig,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
