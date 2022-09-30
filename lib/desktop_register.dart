import 'package:fizyo_app_frontend/mobil.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/bottom_bar.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/nav_bar.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/top_bar.dart';
import 'package:fizyo_app_frontend/src/users_managments/presentation/components/top_bar_icon.dart';
import 'package:flutter/material.dart';


class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            //TopBarRegIcon(icon: Icon(Icons.account_circle_rounded,size: 35.0,)),
            
            NavBar(),
            Container(
              color:const Color(0xFFFFFFFF),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Expanded(
                    flex: 2,
                    child:  Image.asset(
                        'images/bro.png',
                        //width: size.width*0.2,
                        fit: BoxFit.contain,
                      ),
                    ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child:SizedBox() 
                    //mobileScreen(),
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
