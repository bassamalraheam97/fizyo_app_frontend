import 'package:fizyo_app_frontend/desktop_Home.dart';
import 'package:fizyo_app_frontend/desktop_register.dart';
import 'package:fizyo_app_frontend/desktop_service.dart';
import 'package:fizyo_app_frontend/mobil.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/layout.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar();

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(color: Colors.white,
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          InkWell(
            autofocus: _isHovering[0],
            onHover: (value) {
              setState(() {
                value ? _isHovering[0] = true : _isHovering[0] = false;
              });
            },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LayoutSelection(desktop: DesktopHomePage(), mobil: mobileScreen()) ),
              );

            },
            child: Column(
              children: [
                Text(
                  'Home Page',
                  style: TextStyle(
                      color:
                          _isHovering[0] ? Color(0xFF44474F) : Color(0xFF44474F),
                      fontWeight: FontWeight.w400,
                      fontSize: size.width / 50),
                ),
                SizedBox(width: 20),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[0],
                  child: Container(
                    height: 4,
                    width: size.width / 10,
                    color: Color.fromARGB(255, 234, 0, 255),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          InkWell(
            onHover: (value) {
              setState(() {
                value ? _isHovering[1] = true : _isHovering[1] = false;
              });
            },
            onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LayoutSelection(desktop: DesktopServices(), mobil: mobileScreen())),
              );},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Services',
                  style: TextStyle(
                      color:
                          _isHovering[0] ? Color(0xFF44474F) : Color(0xFF44474F),
                      fontWeight: FontWeight.w400,
                      fontSize: size.width / 50),
                ),
                SizedBox(width: 20),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[1],
                  child: Container(
                    height: 4,
                    width: size.width / 10,
                    color: Color.fromARGB(255, 234, 0, 255),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          InkWell(
            onHover: (value) {
              setState(() {
                value ? _isHovering[2] = true : _isHovering[2] = false;
              });
            },
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'About us',
                  style: TextStyle(
                      color:
                          _isHovering[0] ? Color(0xFF44474F) : Color(0xFF44474F),
                      fontWeight: FontWeight.w400,
                      fontSize: size.width / 50),
                ),
                SizedBox(width: 20),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[2],
                  child: Container(
                    height: 4,
                    width: size.width / 10,
                    color: Color.fromARGB(255, 234, 0, 255),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          InkWell(
            onHover: (value) {
              setState(() {
                value ? _isHovering[3] = true : _isHovering[3] = false;
              });
            },
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Contact',
                  style: TextStyle(
                      color:
                          _isHovering[0] ? Color(0xFF44474F) : Color(0xFF44474F),
                      fontWeight: FontWeight.w400,
                      fontSize: size.width / 50),
                ),
                SizedBox(width: 20),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[3],
                  child: Container(
                    height: 4,
                    width: size.width / 10,
                    color: Color.fromARGB(255, 234, 0, 255),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          InkWell(
            onHover: (value) {
              setState(() {
                value ? _isHovering[4] = true : _isHovering[4] = false;
              });
            },
            onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LayoutSelection(desktop: DesktopScreen(), mobil: mobileScreen())),
              );},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Registration',
                  style: TextStyle(
                      color:
                          _isHovering[0] ? Color(0xFF44474F) : Color(0xFF44474F),
                      fontWeight: FontWeight.w400,
                      fontSize: size.width / 50),
                ),
                const SizedBox(width: 20),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[4],
                  child: Container(
                    height: 4,
                    width: size.width / 10,
                    color: Color.fromARGB(255, 234, 0, 255),
                  ),
                )
              ],
            ),
          ),
          Spacer(flex: 20),
        ],
      ),
    );

    //);
  }
}
