import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/size_config.dart';

buildTopBarText() => Padding(
      padding: EdgeInsets.only(
        left: getUniqueW(16.0),
        right: getUniqueW(106.0),
        bottom: getUniqueH(8.0),
      ),
      child: const Text(
        "Release something new",
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
