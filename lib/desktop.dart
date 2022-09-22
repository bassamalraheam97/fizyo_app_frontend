import 'package:fizyo_app_frontend/mobil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size=MediaQuery.of(context).size;
    return Scaffold(
      body:  SingleChildScrollView (
          child: Column(  
            children: [
                Container(
                 color:Color(0xFFC5C6D0),
                  child: 
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          "Logo",
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.black87,
                          size: 25.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.black87,
                          size: 25.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.black87,
                          size: 25.0,
                        ),
                      ),
                    ]),
                  ),
                ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Color(0xFFFFFFFF),
                      child: Image.asset(
                        'images/bro.png',
                        fit: BoxFit.contain,
                      ),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: mobileScreen(),
                  ),
                ),
              ]),
              Container(
                color:Color(0xFFE1E2EC),
                child: Row(
                  children: [      
                       SizedBox(
                        height: _size.height/24,
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0,right: 15),
                      child: Text("English(UK)"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Text("Turkish"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Text("العربية",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0,right: 20),
                      child: Text("Copyright .All rights resered. Security usage terms     Cookie prefernces dont sell my peronal information"),
                    ),
                  ],
                ),
              )
            ],
          ),
        
      ),
    );
  }
}
