import 'package:chrp/Constants/SizeConfig.dart';
import 'package:chrp/Screens/NumberRegistration.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: InkWell(
          onTap: (){
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: NumberRegistration()
                )
            );
          },
          child: Container(
            color: Color(0xff202441),
            child: ListView(
              children: [
                SizedBox(
                  height: height * 15,
                ),
                Container(
                  height: height * 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Container(
                  child: Text(
                    'Tap to continue...',
                    style: TextStyle(
                      color: Color(0xffDEDEDE),
                      fontSize: SizeConfig.textMultiplier * 2.3
                    ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
