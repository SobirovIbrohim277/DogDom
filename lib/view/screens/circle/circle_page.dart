import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon/core/constants/colors.dart';
import 'package:imtihon/core/constants/icons.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/providers/search_field_provider.dart';
import 'package:imtihon/view/widgets/my_search_text_field.dart';
import 'package:provider/src/provider.dart';
import 'package:svg_icon/svg_icon.dart';

class CirclePage extends StatefulWidget {
  const CirclePage({Key? key}) : super(key: key);

  @override
  _CirclePageState createState() => _CirclePageState();
}

class _CirclePageState extends State<CirclePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: ButtonBar(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: getUniqueH(58.0),
            width: getUniqueW(375.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: getUniqueH(18.0),
                    left: getUniqueW(18.0),
                    right: getUniqueW(204.0),
                    bottom: getUniqueH(10.0),
                  ),
                  child: Text(
                    "Circle",
                    style: TextStyle(
                      fontSize: getUniqueW(24.0),
                      fontWeight: FontWeight.w600,
                      fontFamily: "assets/fonts/SFProDisplay-Semibold.ttf",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(MyIcons.scan),
                ),
                SizedBox(width: getUniqueW(25.0)),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(MyIcons.add),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: getUniqueH(10.0),
              horizontal: getUniqueW(18.0),
            ),
            child: MySearchTextField(
              controller: context.watch<SearchFieldProvider>().searchController,
              hintText: "Send the sample",
            ),
          ),
          Container(
            height: getUniqueH(190.0),
            width: getUniqueW(339.0),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: getUniqueH(48.0),
                      left: getUniqueW(25.0),
                      right: getUniqueW(157.0),
                      bottom: getUniqueH(47.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "How do you create your circle?",
                        ),
                        Container(
                          height: getUniqueH(28.0),
                          width: getUniqueW(80.0),
                          child: const Text(
                            "Create",
                            style: TextStyle(
                              color: white,
                            ),
                          ),
                          color: black,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
