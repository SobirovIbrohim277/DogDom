import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon/core/constants/asset_icons.dart';
import 'package:imtihon/providers/bottom_provider.dart';
import 'package:provider/src/provider.dart';

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);
  late BottomNavBarProvider _provider;

  @override
  Widget build(BuildContext context) {
    _provider = context.watch<BottomNavBarProvider>();
    return SizedBox(
      height: (88.0),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _provider.currentIndex,
        onTap: _provider.onTap,
        items: _bottomNavigationBarItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _bottomNavigationBarItems() {
    return <BottomNavigationBarItem>[
      _setBottomNavigationBarItem(
        _provider.currentIndex == 0
            ? AssetIcons.homeActive
            : AssetIcons.homeInactive,
      ),
      _setBottomNavigationBarItem(
        _provider.currentIndex == 1
            ? AssetIcons.circleInactive
            : AssetIcons.circle,
      ),
      _setBottomNavigationBarItem(
        _provider.currentIndex == 2
            ? AssetIcons.addCircle
            : AssetIcons.addCircle,
      ),
      _setBottomNavigationBarItem(
        _provider.currentIndex == 3
            ? AssetIcons.messageActive
            : AssetIcons.messageInactive,
      ),
      _setBottomNavigationBarItem(
        _provider.currentIndex == 4
            ? AssetIcons.userActive
            : AssetIcons.userInactive,
      ),
    ];
  }

  BottomNavigationBarItem _setBottomNavigationBarItem(String assetIcon) =>
      BottomNavigationBarItem(
        icon: SvgPicture.asset(assetIcon),
        label: "",
      );
}
