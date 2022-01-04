import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/size_config.dart';

buildTopBarField() => Padding(
      padding: EdgeInsets.only(left: getUniqueW(16.0)),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "What you're thinking right now...",
          hintStyle: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
