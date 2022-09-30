import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBarRegIcon extends StatelessWidget {
  const TopBarRegIcon({super.key, required this.icon, });
  final Icon icon ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(color: Colors.white,
    height: size.height*0.1,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                color: const Color(0xFFC5C6D0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: 
                      Positioned(
                        child:
                         Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text(
                              "Logo",
                              style: TextStyle(fontSize: size.width / 50),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.black87,
                              size: 25.0,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.whatsapp,
                              color: Colors.black87,
                              size: 25.0,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.black87,
                              size: 25.0,
                            ),
                          ),
                          SizedBox(width: size.width*0.05,)
                        ]),
                      ),
                       
                      // Container(
                      //   child: SizedBox(
                      //     height: 200,
                      //   ),
                      // ),
                    
                ),
              ),
              Positioned(
                // right: size.width*0.01,
            child: Padding(
              padding:  EdgeInsets.only(right: size.width*0.01,top: size.width*0.002),
              child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blue[900],
                          child: IconButton(
                          
                            onPressed: () {},
                            icon:  icon ,
                            ),
                          ),
                      ),
            ),
          
            ],
          ),
          
        ],
      ),
    );
  }
}
