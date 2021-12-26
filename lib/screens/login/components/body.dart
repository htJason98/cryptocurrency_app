import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motip_application/components/button.dart';
import 'package:motip_application/components/gradient_box.dart';
import 'package:motip_application/screens/login/components/background.dart';
import 'package:motip_application/screens/login/components/custom_page_indicator.dart';
import 'package:motip_application/screens/login/email/email_login.dart';

class LoginState extends StatefulWidget {
  const LoginState({Key? key}) : super(key: key);

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
            flex: 9,
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
            flex: 4,
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmailLogin()));
                    }),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ButtonImage(
                          icon: LinearGradientMask(
                            child: SvgPicture.asset(
                              "assets/images/ic_google.svg",
                              semanticsLabel: 'Acme Logo',
                              color: Colors.white,
                            ),
                          ),
                          iconSize: 50,
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ButtonImage(
                          icon: LinearGradientMask(
                            child: SvgPicture.asset(
                              "assets/images/ic_facebook.svg",
                              semanticsLabel: 'Acme Logo',
                              color: Colors.white,
                            ),
                          ),
                          iconSize: 50,
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 0),
                  child: Html(
                      data:
                          """<style>p {text-align: center; line-height: 1.2;}</style>
                      <p style="color:white;">By signing up, you agree to our<br>
                      <b>Terms of Use</b> and <b>Privacy Policy</b></p>"""),
                )
              ],
            ),
            flex: 5,
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
        "always keep\nan eye on\nyour cryptocurrency",
        style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            height: 1.25),
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
        "notify you all the time\nhelping you manage\nyour assets",
        style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            height: 1.25),
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
        "avoid losing assets\nwhen the market\nfluctuates greatly",
        style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            height: 1.25),
      ),
    );
  }
}
