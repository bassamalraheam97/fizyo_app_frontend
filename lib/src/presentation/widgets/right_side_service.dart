import 'package:flutter/material.dart';

class RightSideServices extends StatelessWidget {
  const RightSideServices({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width * 0.6,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(28))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: SizedBox(
                    width: 100,
                    height: 90,
                    // child: Image.asset(
                    //   '${image}',
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("DR.name surname",
                  style: TextStyle(fontSize: size.width * 0.01)),
              Text("Specialities",
                  style: TextStyle(fontSize: size.width * 0.008)),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_outlined,
                    //color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.house_outlined,
                    //color: Colors.green,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.smart_display_outlined,
                    //color: Colors.blue,
                    size: 24.0,
                  ),
                ],
              ),
              TextButton(onPressed: () {}, child: Text("see more..")),
            ],
          ),
        )
      ]),
    );
  }
}
