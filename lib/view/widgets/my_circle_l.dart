import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/colors.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/view/screens/circle/circle_detail_page.dart';
import 'package:imtihon/view/widgets/text/my_text_regular.dart';

class MyCirclesListView extends StatelessWidget {
  const MyCirclesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: getUniqueH(124.0),
      color: grey,
      child: ListView.builder(
          padding: EdgeInsets.only(left: getUniqueW(18.0)),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CircleDetailPage(),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(right: getUniqueW(18.0)),
                padding: EdgeInsets.zero,
                height: getUniqueH(104.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      foregroundImage: NetworkImage(
                        'https://source.unsplash.com/random/${index + 1}',
                      ),
                      backgroundColor: grey,
                      radius: getUniqueW(40.0),
                    ),
                    SizedBox(height: getUniqueH(6.0)),
                    MyTextRegular(data: 'Name Surname', size: 13.0,maxLines: 1,),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
