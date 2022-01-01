import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:move_to_background/move_to_background.dart';

import 'components/bottom_navigation_bar.dart';
import 'components/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 0;
  late PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Body(
            tabPages: tabPages,
            onPageChanged: onPageChanged,
            pageController: _pageController),
        bottomNavigationBar: CustomBottomNavigationBar(
          pageIndex: _pageIndex,
          onTabTapped: onTabTapped,
        ),
      ),
      onWillPop: () async {
        MoveToBackground.moveTaskToBack();
        return false;
      },
    );
  }

  List<Widget> tabPages = [
    HomePage(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}

class Body extends StatelessWidget {
  final List<Widget> tabPages;
  final Function(int) onPageChanged;
  final PageController pageController;
  const Body(
      {Key? key,
      required this.tabPages,
      required this.onPageChanged,
      required this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          Expanded(
            child: PageView(
              children: tabPages,
              onPageChanged: onPageChanged,
              controller: pageController,
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(child: Text("Screen 2")),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Center(child: Text("Screen 3")),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(child: Text("Screen 4")),
    );
  }
}

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(child: Text("Screen 5")),
    );
  }
}
