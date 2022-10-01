import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'src/presentation/widgets/title_homepage.dart';
import 'src/users_managments/presentation/components/bottom_bar.dart';
import 'src/users_managments/presentation/components/nav_bar.dart';
import 'src/users_managments/presentation/components/top_bar.dart';
import 'src/users_managments/presentation/components/top_bar_icon.dart';
import 'mobil.dart';

class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({super.key});

  @override
  State<DesktopHomePage> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  var _itemImage = [
    Image.asset(
      "images/amico.png",
      fit: BoxFit.cover,
    ),
    Image.asset("images/news.png", fit: BoxFit.cover),
    Image.asset("images/chair.png", fit: BoxFit.cover),
    Image.asset("images/onlinedoctor.png", fit: BoxFit.cover),
    Image.asset("images/hospital.png", fit: BoxFit.cover),
  ];
  int index = 0;
  int x=0;
  incFunction() {
    
      index++;
  }

  decFunction() {
    
      index--;
  }
  int changeFun(){
    if(index==1)
      x=0;
    else x=1;
    return x;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBarRegIcon(
                icon: Icon(
              Icons.person,
              size: 35.0,
            )),
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
                                        icon: const Icon(
                                            Icons.arrow_circle_left_rounded,
                                            size: 50),
                                        color: Colors.blue,
                                        onPressed: () {
                                          setState(() {
                                            if (index > 1)
                                              decFunction();
                                            else
                                              index = 0;
                                          });
                                        },
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
                                  _itemImage[index]
                                  // Image.asset(
                                  //   'images/amico.png',
                                  //   width: size.width * 0.4,
                                  //   fit: BoxFit.contain,
                                  // ),
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
                                        icon: const Icon(
                                            Icons.arrow_circle_right_rounded,
                                            size: 50),
                                        color: Colors.blue,
                                        onPressed: () {
                                          setState(() {
                                            if (index < 3)
                                              incFunction();
                                            else
                                              index = 3;
                                          });
                                        },
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
                        Container(
                            color: Colors.red, width: 20, child: SizedBox()),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      TitleHomePage(image: _itemImage[4]),
                      // "images/hospital.png"
                      // ),
                      SizedBox(height: 1.0),
                      TitleHomePage(image: _itemImage[changeFun()]),

                      // TitleHomePage(image: "images/amico.png"),
                      SizedBox(height: 1.0),
                      TitleHomePage(image: _itemImage[2]),

                      //TitleHomePage(image: "images/chair.png"),
                      SizedBox(height: 1.0),
                      TitleHomePage(image: _itemImage[3]),

                      //TitleHomePage(image: "images/onlinedoctor.png"),
                    ],
                  ),
                ),

                // TitleHomePage(image: "images/rifiki.png"),
              ]),
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
