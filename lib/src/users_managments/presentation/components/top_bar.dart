import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
              color: const Color(0xFFC5C6D0),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(children: [
                   Padding(
                    padding:  EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Logo",
                      style: TextStyle(fontSize: size.width/50),
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
                ]),
              ),
            );
  }
}