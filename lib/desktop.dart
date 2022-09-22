import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // bottom:
        // const TabBar(
        //   tabs: [
        //     Tab(icon: Icon(Icons.directions_car)),
        //     Tab(icon: Icon(Icons.directions_transit)),
        //     Tab(icon: Icon(Icons.directions_bike)),
        //   ],
        // ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Text("LOGO"),
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
            ],
          ),
        ),
      ),
      body: Row(
        children: [
          Row(
            children: [
              // const TabBarView(
              //   children: [
              //     Icon(Icons.directions_car),
              //     Icon(Icons.directions_transit),
              //     Icon(Icons.directions_bike),
              //   ],
              // ),
            ],
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  'images/bro.png',
                  fit: BoxFit.contain,
                ),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'FirstName',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'LastName',
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                color: Color(0xffE1E2EC),
                child: SizedBox(
                  height: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
