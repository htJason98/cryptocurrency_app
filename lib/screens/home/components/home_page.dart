import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
          child: Header(),
          flex: 1,
        ),
        Expanded(
          child: Body(),
          flex: 8,
        )
      ],
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
                                SvgPicture.asset("assets/icons/ic_search.svg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: SvgPicture.asset(
                                "assets/icons/ic_notification.svg"),
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

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Center(
          child: Column(
        children: const [Expanded(child: Text("Home Page"))],
      )),
    ));
  }
}
