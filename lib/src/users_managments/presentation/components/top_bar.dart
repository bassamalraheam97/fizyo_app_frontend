import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  TopBarContents();

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {},
                child: 
                Column(
                 
                  children: [
                    Text(
                      'Home Page',
                      style: TextStyle(
                          color: _isHovering[0]
                              ? Color(0xFF44474F)
                              : Color(0xFF44474F),
                          fontWeight: FontWeight.w400,
                          fontSize: 32),
                    ),
                    SizedBox(width: 20),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 4,
                        width: 170,
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
                onTap: () {},
                child: 
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                          color: _isHovering[0]
                              ? Color(0xFF44474F)
                              : Color(0xFF44474F),
                          fontWeight: FontWeight.w400,
                          fontSize: 32),
                    ),
                    SizedBox(width: 20),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 4,
                        width: 125,
                        color: Color.fromARGB(255, 234, 0, 255),
                      ),
                    )
                  ],
                ),
                
              ),Spacer(),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: 
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'About us',
                      style: TextStyle(
                          color: _isHovering[0]
                              ? Color(0xFF44474F)
                              : Color(0xFF44474F),
                          fontWeight: FontWeight.w400,
                          fontSize: 32),
                    ),
                    SizedBox(width: 20),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 4,
                        width: 130,
                        color: Color.fromARGB(255, 234, 0, 255),
                      ),
                    )
                  ],
                ),
                
              ),Spacer(),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: () {},
                child: 
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                          color: _isHovering[0]
                              ? Color(0xFF44474F)
                              : Color(0xFF44474F),
                          fontWeight: FontWeight.w400,
                          fontSize: 32),
                    ),
                    SizedBox(width: 20),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                        height: 4,
                        width: 120,
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
                onTap: () {},
                child: 
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Registration',
                      style: TextStyle(
                          color: _isHovering[0]
                              ? Color(0xFF44474F)
                              : Color(0xFF44474F),
                          fontWeight: FontWeight.w400,
                          fontSize: 32),
                    ),
                    SizedBox(width: 20),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[4],
                      child: Container(
                        height: 4,
                        width: 170,
                        color: Color.fromARGB(255, 234, 0, 255),
                      ),
                    )
                  ],
                ),
                
              ),
              Spacer(flex:20),
            ],
          );
        
    //);
  }
}
