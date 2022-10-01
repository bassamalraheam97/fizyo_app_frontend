import 'src/presentation/widgets/right_side_service.dart';
import 'src/users_managments/presentation/components/bottom_bar.dart';
import 'src/users_managments/presentation/components/nav_bar.dart';
import 'src/users_managments/presentation/components/top_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DesktopServices extends StatelessWidget {
  const DesktopServices({super.key});

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
                            left: size.width * 0.06,
                            right: size.width * 0.06),
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
                            SizedBox(
                              width: 40,
                            ),
                            Expanded(
                                flex: 4,
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
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Center(
                                            child: Column(
                                          children: [
                                            Text(
                                                'Detailed explanation of the doctor'),
                                            Text(
                                                'Detailed explanation of the doctor'),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "see more..",
                                                  style: TextStyle(
                                                      color: Colors.red[500]),
                                                )),
                                          ],
                                        )),
                                      ),
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
                            ),
                          ],
                        ),
                      ),
                      // Expanded(child: SizedBox(height: size.height*0.5,)),
                    ],
                  ),
                ),

                // Container(
                //                   width: 10,
                //                   height: size.height-30.0 ,
                //                   decoration: BoxDecoration(
                //                       color: Colors.grey[500],

                //                       borderRadius: BorderRadius.all(
                //                           Radius.circular(10))),
                //                   child: SizedBox(

                //                   ),
                //                 ),

                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        RightSideServices(image: ""),
                        // Divider(
                        //       thickness: 5,
                        //       color: Colors.red,
                        //     ),
                        SizedBox(height: 10),
                        RightSideServices(image: ""),
                        SizedBox(height: 10),
                        RightSideServices(image: ""),
                        SizedBox(height: 10),
                        RightSideServices(image: ""),
                        SizedBox(height: 10),
                      ],
                    ),
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
