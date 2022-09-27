import 'package:fizyo_app_frontend/src/users_managments/presentation/components/bottom_bar.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/nav_bar.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'mobil.dart';

class DesktopServices extends StatelessWidget {
  const DesktopServices({super.key});

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
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Component21.png',
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.03,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.1,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    '+500',
                                    style:
                                        TextStyle(fontSize: size.width * 0.01),
                                  ),
                                  Text('Patients',
                                      style: TextStyle(
                                          fontSize: size.width * 0.008)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.1,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    '5',
                                    style:
                                        TextStyle(fontSize: size.width * 0.01),
                                  ),
                                  Text('Sessions',
                                      style: TextStyle(
                                          fontSize: size.width * 0.008)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.1,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    '10 years',
                                    style:
                                        TextStyle(fontSize: size.width * 0.01),
                                  ),
                                  Text('Expiriance',
                                      style: TextStyle(
                                          fontSize: size.width * 0.008)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.1,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    " 40\$ to 80\$",
                                    style:
                                        TextStyle(fontSize: size.width * 0.01),
                                  ),
                                  Text('Price',
                                      style: TextStyle(
                                          fontSize: size.width * 0.008)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.03,
                            left: size.width * 0.1,
                            right: size.width * 0.1),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Biography',
                                  style: TextStyle(fontSize: size.width * 0.03),
                                )
                              ],
                            ),
                            Spacer(),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Container(
                                      width: size.width * 0.9,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: Center(
                                          child: Column(
                                        children: [
                                          Text(
                                              'Detailed explanation of the doctor'),
                                          Text(
                                              'Detailed explanation of the doctor'),
                                          Text(
                                            'see more',
                                            style: TextStyle(
                                                color: Colors.red[500]),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.03, right: size.width * 0.2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: size.width * 0.1,
                                  height: size.height * 0.04,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[900],
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Set a date',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      // Expanded(child: SizedBox(height: size.height*0.5,)),
                    ],
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
