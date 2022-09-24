import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xFFE1E2EC),
      child: Row(
        children: [
          SizedBox(
            height: size.height / 24,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50.0, right: 15),
            child: Text("English(UK)"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15),
            child: Text("Turkish"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15),
            child: Text(
              "العربية",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Padding(
              padding: EdgeInsets.only(left: 50.0, right: 20),
              child: Text(
                "Copyright .All rights resered. Security usage terms     Cookie prefernces dont sell my peronal information",
                style: TextStyle(fontSize: size.width / 100),
              )),
        ],
      ),
    );
  }
}
