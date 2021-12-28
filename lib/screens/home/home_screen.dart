import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:motip_application/utils/Strings.dart';
import 'package:move_to_background/move_to_background.dart';

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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: onTabTapped,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: Strings.bottomPageHome),
            BottomNavigationBarItem(
                icon: Icon(Icons.money_off_csred_outlined),
                label: Strings.bottomPageMarket),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_chart),
                label: Strings.bottomPagePortfolio),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: Strings.bottomPageExplore),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: Strings.bottomPageSettings),
          ],
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
          const Expanded(
            child: Header(),
            flex: 1,
          ),
          Expanded(
            child: PageView(
              children: tabPages,
              onPageChanged: onPageChanged,
              controller: pageController,
            ),
            flex: 8,
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var padding = MediaQuery.of(context).padding.top;
    return Padding(
      padding: EdgeInsets.only(top: padding, bottom: 10),
      child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "MotipApplication",
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child:
                                SvgPicture.asset("assets/images/ic_search.svg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: SvgPicture.asset(
                                "assets/images/ic_notification.svg"),
                          )
                        ],
                      ),
                      flex: 1,
                    ),
                  ],
                ),
                flex: 1,
              ),
            ],
          )),
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
