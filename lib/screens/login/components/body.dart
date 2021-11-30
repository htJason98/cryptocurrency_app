import 'package:flutter/material.dart';
import 'package:motip_application/components/button.dart';
import 'package:motip_application/components/gradient_button.dart';
import 'package:motip_application/screens/login/components/background.dart';
import 'package:motip_application/screens/login/components/custom_page_indicator.dart';

class LoginState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Body();
}

class Body extends State<LoginState> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              "assets/images/login_image.png",
              width: size.width * 0.5,
            ),
            flex: 7,
          ),
          Expanded(
            child: SizedBox(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: const <Widget>[
                        Page1(),
                        Page2(),
                        Page3(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, snapshot) {
                          return CustomPaint(
                            painter: PageIndicatorPainter(
                                pageCount: 3,
                                dotRadius: 8,
                                dotOutlineThickness: 2,
                                spacing: 30,
                                scrollPosition: _pageController.hasClients &&
                                        _pageController.page != null
                                    ? _pageController.page!
                                    : 0.0,
                                dotFillColor: Colors.grey,
                                dotOutlineColor: Colors.black,
                                indicatorColor: Colors.blueAccent),
                          );
                        }),
                  )
                ],
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Column(
              children: [
                GradientTextButton(
                    child: const Text(
                      "continue with email",
                      style: TextStyle(color: Colors.white),
                    ),
                    verticalPadding: 18,
                    horizontalPadding: 100,
                    colors: const [Colors.blueAccent, Colors.pinkAccent],
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => HomeScreen()));
                    }),
              ],
            ),
            flex: 3,
          )
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
      child: Text(
        "always keep\nan eye on\nyour cryptocurrency1",
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
      child: Text(
        "always keep\nan eye on\nyour cryptocurrency2",
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
      child: Text(
        "always keep\nan eye on\nyour cryptocurrency3",
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white),
      ),
    );
  }
}
