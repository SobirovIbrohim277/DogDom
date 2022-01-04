import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/providers/release_provider.dart';
import 'package:imtihon/view/screens/release_page/modul/img_of_release_page.dart';
import 'package:imtihon/view/screens/release_page/modul/name_of_buttomns.dart';
import 'package:provider/src/provider.dart';

class ReleaseBottomBar extends StatelessWidget {
  const ReleaseBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImagePicker _picker = ImagePicker();
    XFile? image;
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 35.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(ImgOfReleasPage.img[0]),
            ),
            SizedBox(height: getUniqueH(8.0)),
            Text(
              NameOfButtons.names[0],
              style:
                  const TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
            )
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 35.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(ImgOfReleasPage.img[1]),
            ),
            SizedBox(height: getUniqueH(8.0)),
            Text(
              NameOfButtons.names[1],
              style:
                  const TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
            )
          ],
        ),
        Column(
          children: [
            InkWell(
              onTap: () async {
                image = await _picker.pickImage(source: ImageSource.gallery);
                context.read<ReleaseProvider>().addImg(image!);
              },
              child: CircleAvatar(
                radius: 35.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(ImgOfReleasPage.img[2]),
              ),
            ),
            SizedBox(height: getUniqueH(8.0)),
            Text(
              NameOfButtons.names[2],
              style:
                  const TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
            )
          ],
        ),
      ],
    );
  }
}
