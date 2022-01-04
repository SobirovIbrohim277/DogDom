import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/colors.dart';
import 'package:imtihon/core/constants/icons.dart';
import 'package:imtihon/core/constants/images.dart';
import 'package:imtihon/core/constants/imports.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/providers/text_field_provider.dart';
import 'package:imtihon/view/screens/home/home_page.dart';
import 'package:imtihon/view/widgets/my_auth_text_field.dart';
import 'package:imtihon/view/widgets/text/my_text_regular.dart';

class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: SizeConfig.screenWidth,
        child: Container(
          color: black.withOpacity(0.7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: getUniqueH(157.0)),
              SvgPicture.asset(
                MyIcons.textLogo,
                color: white,
                width: getUniqueW(180.0),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.fromLTRB(
                  getUniqueW(28.0),
                  getUniqueH(40.0),
                  getUniqueW(28.0),
                  getUniqueH(16.0),
                ),
                child: MyAuthTextField(
                  controller:
                      Provider.of<TextFieldProvider>(context).textController,
                  hintText: '',
                  textInputType: TextInputType.phone,
                  labelText: "",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Text("Get Captcha"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      getUniqueW(30.0),
                    ),
                  ),
                  primary: red,
                  fixedSize: Size(
                    getUniqueW(319.0),
                    getUniqueH(60.0),
                  ),
                ),
              ),
              Container(
                child: MyTextRegular(
                  data: "Password to Login",
                  size: 13,
                  color: white,
                  maxLines: 1,
                ),
                padding: EdgeInsets.only(
                  left: getUniqueW(35.0),
                  top: getUniqueH(10.0),
                ),
                alignment: Alignment.centerLeft,
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.only(bottom: getUniqueH(16.0)),
                width: getUniqueW(260.0),
                child: MyTextRegular(
                  data:
                      'By signing in, you agree to the User Agreement and Privacy Terms.',
                  size: 13,
                  color: white,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(MyImages.photoPng),
          ),
        ),
      ),
    );
  }
}
