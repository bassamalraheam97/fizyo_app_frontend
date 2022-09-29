import 'package:flutter/material.dart';

class TitleHomePage extends StatelessWidget {
  const TitleHomePage({super.key, required this.image});
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
                          width: 60,
                          child: Image.asset(
                            '${image}',
                            fit: BoxFit.cover,
                          ),
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
                    Text("Main title",
                        style: TextStyle(fontSize: size.width * 0.02)),
                    Text("date 01/04/2022",
                        style: TextStyle(fontSize: size.width * 0.008)),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            //width: 150,
                            child: Text(
                          "Detailed explanation of the  advertisement",
                          style: TextStyle(fontSize: size.width * 0.009),
                          textAlign: TextAlign.center,
                          //overflow: TextOverflow.ellipsis,
                          // maxLines: 2
                        )),
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
