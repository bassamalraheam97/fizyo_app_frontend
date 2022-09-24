import 'package:fizyo_app_frontend/src/users_managments/presentation/components/bottom_bar.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/nav_bar.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'mobil.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            NavBar(),
            Container(
              color: const Color(0xFFFFFFFF),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          'Main title',
                          style: TextStyle(fontSize: size.width * 0.05),
                        ),
                        Text(
                          'date 01/04/2022',
                          style: TextStyle(fontSize: size.width * 0.01),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Center(
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        color: Colors.lightBlue,
                                        shape: CircleBorder(),
                                      ),
                                      child: IconButton(
                                        icon: const Icon(Icons.arrow_circle_left_rounded,size: 50),
                                        color: Colors.blue,
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/amico.png',
                                    width: size.width * 0.4,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Center(
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        color: Colors.lightBlue,
                                        shape: CircleBorder(),
                                      ),
                                      child: IconButton(
                                        icon: const Icon(Icons.arrow_circle_right_rounded,size: 50),
                                        color: Colors.blue,
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Detailed explanation of the ',
                          style: TextStyle(
                              fontSize: size.width * 0.02,
                              color: Color(0xff757780)),
                        ),
                        Text(
                          ' advertisement',
                          style: TextStyle(
                              fontSize: size.width * 0.02,
                              color: Color(0xff757780)),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: mobileScreen(),
                  ),
                ),
              ]),
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
