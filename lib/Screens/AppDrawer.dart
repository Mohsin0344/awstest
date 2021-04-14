import 'package:chrp/Constants/SizeConfig.dart';
import 'package:chrp/Screens/SettingsScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.widthMultiplier * 65,
      decoration: BoxDecoration(
        color: Color(0xff2A2F55),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(18.0),
          bottomRight: Radius.circular(18.0)
        )
      ),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: SizeConfig.widthMultiplier * 43,
              top: SizeConfig.heightMultiplier * 2
            ),
            height: SizeConfig.heightMultiplier * 6,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffD6813E),
                width: 4,
              ),
              shape: BoxShape.circle
            ),
            child: Center(
              child: Image.asset('images/Path 32.png', height: 20,)
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 60,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 6
            ),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: SettingsScreen()
                    )
                );
              },
              child: Container(
                height: SizeConfig.heightMultiplier * 6,
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'AvenirL',
                    fontSize: SizeConfig.textMultiplier * 3.3
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.widthMultiplier * 6
            ),
            child: Container(
              height: SizeConfig.heightMultiplier * 6,
              child: Text(
                'Chrp History',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'AvenirL',
                    fontSize: SizeConfig.textMultiplier * 3.3
                ),
              ),
            ),
          ),
          Divider(
            color: Color(0xffD6813E),
            thickness: 3,
            indent: 28,
            endIndent: 60,
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 1.5,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.widthMultiplier * 6
            ),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: SizeConfig.heightMultiplier * 6,
                child: Text(
                  'Menu',
                  style: TextStyle(
                      color: Color(0xffD6813E),
                      fontFamily: 'AvenirL',
                      fontSize: SizeConfig.textMultiplier * 5
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
