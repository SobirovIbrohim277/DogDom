import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/view/screens/massages_input/widgets/time_text.dart';
import 'package:imtihon/view/screens/massages_input/widgets/top_bar.dart';

class MassagesInput extends StatefulWidget {
  const MassagesInput({Key? key}) : super(key: key);

  @override
  State<MassagesInput> createState() => _MassagesInputState();
}

class _MassagesInputState extends State<MassagesInput> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _massageController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SizedBox(height: getUniqueH(44)),
            const TopBarMassageInput(),
            SizedBox(height: getUniqueH(10.0)),
            buildTimeText(),
            SizedBox(height: getUniqueH(15.0)),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                left: getUniqueW(18.0),
                right: getUniqueW(65.0),
              ),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: _massageController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    suffixIcon: Row(
                      children: [
                        SizedBox(width: getUniqueW(20.0)),
                        const Text(
                          "The input information",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: getUniqueW(28.0)),
                        SizedBox(
                          width: getUniqueW(112.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset("assets/icons/Add_circle.svg"),
                              SvgPicture.asset("assets/icons/Smile.svg"),
                              SvgPicture.asset("assets/icons/Voice.svg"),
                            ],
                          ),
                        )
                      ],
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
