import 'package:flutter/material.dart';
import 'package:motip_application/presentation/utils/Dimens.dart';
import 'package:motip_application/presentation/utils/Strings.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTabTapped;
  const CustomBottomNavigationBar(
      {Key? key, required this.pageIndex, required this.onTabTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.bottomNavigationBarHeight,
      child: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: Dimens.bottomNavigationIconSize),
              label: Strings.bottomPageHome),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.leaderboard,
                size: Dimens.bottomNavigationIconSize,
              ),
              label: Strings.bottomPageMarket),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_mall,
                size: Dimens.bottomNavigationIconSize,
              ),
              label: Strings.bottomPagePortfolio),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore, size: Dimens.bottomNavigationIconSize),
              label: Strings.bottomPageExplore),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: Dimens.bottomNavigationIconSize),
              label: Strings.bottomPageSettings),
        ],
      ),
    );
  }
}
