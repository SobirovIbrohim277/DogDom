import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/colors.dart';
import 'package:imtihon/core/constants/size_config.dart';

class MyAuthTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final TextInputType textInputType;
  final String labelText;
  late bool isVisible;
  Widget? suffixIcon;

  String? Function(String?)? validator;

  MyAuthTextField({
    required this.controller,
    required this.hintText,
    required this.textInputType,
    required this.labelText,
    this.suffixIcon,
    this.validator,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //isVisible = Provider.of<TextFieldProvider>(context).isVisible;
    SizeConfig().init(context);
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
      //obscureText: (keyboardType == TextInputType.visiblePassword && isVisible) ? true : false,
      onChanged: (value) {
        // Provider.of<TextFieldProvider>(context, listen: false).value =
        //     value;
        // context.read<TextFieldProvider>().changValue(value);
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        filled: true,
        fillColor: white.withOpacity(0.25),
        contentPadding: EdgeInsets.symmetric(
          vertical: getUniqueH(18.0),
          horizontal: getUniqueW(28.0),
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
        color: white,
        fontSize: getUniqueW(17.0),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
