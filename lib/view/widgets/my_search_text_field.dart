import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/colors.dart';
import 'package:imtihon/core/constants/size_config.dart';

class MySearchTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final TextInputType? textInputType;
  final String? labelText;
  late bool isVisible;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? Function(String?)? validator;

  MySearchTextField({
    required this.controller,
    required this.hintText,
    this.labelText,
    this.textInputType,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
      onChanged: (value) {
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          color: black.withOpacity(0.25),
        ),

        filled: true,
        fillColor: grey,

        contentPadding: EdgeInsets.symmetric(
          vertical: getUniqueH(6.0),
          horizontal: getUniqueW(12.0),
        ),
        border: UnderlineInputBorder(
          borderSide: const BorderSide(
            style: BorderStyle.none,
            width: 0.0,
          ),
          borderRadius: BorderRadius.circular(
            getUniqueW(30.0),
          ),
        ),
      ),
      style: TextStyle(
        color: black,
        fontSize: getUniqueW(17.0),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
