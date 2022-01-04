import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/size_config.dart';
import 'package:imtihon/view/screens/massages/modul/massages_modul.dart';
import 'package:imtihon/view/screens/massages/modul/top_bar_names.dart';

class TopCards extends StatelessWidget {
  const TopCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return SizedBox(
      height: getUniqueH(76),
      width: width,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: index == 0
                ? EdgeInsets.only(
                    right: getUniqueW(30.0),
                    left: getUniqueW(30.0),
                  )
                : EdgeInsets.only(
                    right: getUniqueW(30.0),
                  ),
            child: SizedBox(
              height: getUniqueH(76),
              width: getUniqueW(50.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: getUniqueH(8.0),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 25,
                      child: Image(
                        image: AssetImage(
                          MassagesImg.imgs[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    MassagTopBarNames.name[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0,
                      color: Color.fromRGBO(0, 0, 0, 0.55),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
