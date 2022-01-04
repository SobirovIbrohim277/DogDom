import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon/core/constants/colors.dart';
import 'package:imtihon/core/constants/icons.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/view/widgets/my_auth_text_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controoo = TextEditingController(text: "");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Container(
          color: black.withOpacity(0.7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: getUniqueH(157.0),
              ),
              SvgPicture.asset(
                MyIcons.textLogo,
                color: white,
                width: getUniqueW(180.0),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.fromLTRB(
                  getUniqueW(28.0),
                  getUniqueH(39.95),
                  getUniqueW(28.0),
                  getUniqueH(16.0),
                ),
                child: MyAuthTextField(
                  hintText: '',
                  textInputType: TextInputType.phone,
                  labelText: "",
                  controller: controoo,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Get Captcha"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      getUniqueW(30.0),
                    ),
                  ),
                  primary: white,
                  fixedSize: Size(
                    getUniqueW(319.0),
                    getUniqueH(60.0),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Password to Login",
                  style: TextStyle(
                    fontSize: getUniqueW(13.0),
                    fontWeight: FontWeight.w400,
                    color: white,
                  ),
                ),
                padding: EdgeInsets.only(
                  left: getUniqueW(35.0),
                  top: getUniqueH(10.0),
                ),
                alignment: Alignment.centerLeft,
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.only(
                  bottom: getUniqueH(16.0),
                ),
                width: getUniqueW(260.0),
                child: Text(
                  "By signing in, you agree to the User Agreement and Privacy Terms.",
                  style: TextStyle(
                    fontSize: getUniqueW(13.0),
                    fontWeight: FontWeight.w400,
                    color: white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/login.png"),
          ),
        ),
      ),
    );
  }
}
