import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/view/screens/massages/widgets/body_cards.dart';
import 'package:imtihon/view/screens/massages/widgets/top_bar.dart';
import 'package:imtihon/view/screens/massages/widgets/top_cards.dart';

class Massages extends StatelessWidget {
  const Massages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SizedBox(height: getUniqueH(44.0)),
            Padding(
              padding: EdgeInsets.only(
                right: getUniqueW(18.0),
                left: getUniqueW(10.0),
              ),
              child: buildtopBar(),
            ),
            SizedBox(height: getUniqueH(16.0)),
            const TopCards(),
            SizedBox(height: getUniqueH(16.0)),
            const Bodycards(),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getUniqueW(18.0),
              ),
              child: SizedBox(
                height: getUniqueH(85.0),
                width: width,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.none,
                        width: 0,
                      ),
                    ),
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.55),
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                    hintText: "Search for Friends' Name...",
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
