import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/view/screens/release_page/widgets/add_video.dart';
import 'package:imtihon/view/screens/release_page/widgets/release_bottombar.dart';
import 'package:imtihon/view/screens/release_page/widgets/topbar_formfield.dart';
import 'package:imtihon/view/screens/release_page/widgets/topbar_text.dart';

class Release1 extends StatelessWidget {
  const Release1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImagePicker _picker = ImagePicker();
    XFile? image;
    SizeConfig().init(context);

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getUniqueH(74.0)),
            buildTopBarText(),
            buildTopBarField(),
            const ReleaseAddVieo(),
            const Spacer(),
            const ReleaseBottomBar(),
            SizedBox(height: getUniqueH(48.0)),
            const Align(
              alignment: Alignment.center,
              child: Icon(Icons.close),
            ),
            SizedBox(height: getUniqueH(5.0)),
          ],
        ),
      ),
    );
  }
}
