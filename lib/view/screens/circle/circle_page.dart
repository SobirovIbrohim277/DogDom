import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/colors.dart';
import 'package:imtihon/core/constants/icons.dart';
import 'package:imtihon/core/constants/imports.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/providers/search_field_provider.dart';
import 'package:imtihon/view/screens/circle/circle_detail_page.dart';
import 'package:imtihon/view/widgets/my_circle_l.dart';
import 'package:imtihon/view/widgets/my_scroll.dart';
import 'package:imtihon/view/widgets/my_search_text_field.dart';
import 'package:imtihon/view/widgets/text/my_text_medium.dart';
import 'package:imtihon/view/widgets/text/my_text_regular.dart';
import 'package:imtihon/view/widgets/text/my_text_semibold.dart';
import 'package:provider/src/provider.dart';

class CirclePage extends StatelessWidget {
  const CirclePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          appBar(),
          textField(context),
          horizontalScroll(),
          sectionTitle('Popular circle'),
          MyCirclesListView(),
          SizedBox(height: getUniqueH(10.0)),
          sectionTitle('The Circle to Join'),
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: getUniqueW(18.0),
                vertical: getUniqueH(10.0),
              ),
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CircleDetailPage(),
                    ),
                  ),
                  child: SizedBox(
                    width: SizeConfig.screenWidth,
                    height: getUniqueH(90.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: grey,
                          foregroundImage: NetworkImage(
                            'https://source.unsplash.com/random/${index + 1}',
                          ),
                          radius: getUniqueW(35.0),
                        ),
                        SizedBox(
                          width: getUniqueW(16.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyTextRegular(
                              data: 'I love Golden Retriever',
                              size: getUniqueW(16.0),
                              maxLines: 1,
                            ),
                            MyTextRegular(
                              data: '548 Members',
                              size: getUniqueW(16.0),
                              color: black.withOpacity(0.4),
                              maxLines: 1,
                            ),
                          ],
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: red,
                            fixedSize: Size(
                              getUniqueW(70.0),
                              getUniqueH(28.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Joined',
                            style: TextStyle(
                              fontSize: getUniqueW(12.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget appBar() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getUniqueW(18.0),
          vertical: getUniqueH(18.0),
        ),
        child: Row(
          children: [
            MyTextSemibold(data: 'Circle', size: 24),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                MyIcons.scan,
                width: getUniqueW(24.0),
              ),
            ),
            SizedBox(
              width: getUniqueW(25.0),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                MyIcons.add,
                width: getUniqueW(24.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getUniqueW(18.0),
      ),
      child: MySearchTextField(
        controller: context.watch<SearchFieldProvider>().searchController,
        hintText: '',
      ),
    );
  }

  Widget horizontalScroll() {
    return Container(
      margin: EdgeInsets.only(
        top: getUniqueH(20),
      ),
      width: SizeConfig.screenWidth,
      height: getUniqueH(190.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: getUniqueW(18.0),
        ),
        itemCount: 2,
        itemBuilder: (context, index) {
          return index == 0
              ? MyHorizontalScrollCard(
                  cardColor: red.withOpacity(0.3),
                  onpressed: () {},
                  buttonText: 'Create',
                  title: 'How do you\ncreate your circle?',
                  titleSize: 20,
                )
              : MyHorizontalScrollCard(
                  cardColor: Colors.pink,
                  title: 'How do you create your circle?',
                  titleSize: 17,
                );
        },
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Container(
      height: getUniqueH(35.0),
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.symmetric(
        horizontal: getUniqueW(18.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyTextMedium(data: title, size: 20),
          InkWell(
            onTap: () {},
            child: MyTextRegular(
              data: 'More',
              size: 13,
              color: black.withOpacity(0.4),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
