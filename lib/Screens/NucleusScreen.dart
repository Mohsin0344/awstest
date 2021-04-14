import 'package:chrp/Constants/SizeConfig.dart';
import 'package:flutter/material.dart';

class NucleusScreen extends StatefulWidget {
  @override
  _NucleusScreenState createState() => _NucleusScreenState();
}

class _NucleusScreenState extends State<NucleusScreen> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: height * 8,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color(0xffDEDEDE).withOpacity(0.3),
                width: 1
              ),
                bottom: BorderSide(
                    color: Color(0xffDEDEDE).withOpacity(0.3),
                    width: 1
                )
            )
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('images/Mask Group 3.png'),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(
                    left: width * 5
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Most Popular',
                    style: TextStyle(
                      fontFamily: 'AvenirL',
                      color: Colors.white,
                      fontSize: SizeConfig.textMultiplier * 3
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 4,
        ),
        Container(
          height: height * 8,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1
                  ),
                  bottom: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1
                  )
              )
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: height * 1.3
                      ),
                      child: Image.asset('images/closet icon - orange.png')),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(
                      left: width * 5
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Closet',
                    style: TextStyle(
                        fontFamily: 'AvenirL',
                        color: Colors.white,
                        fontSize: SizeConfig.textMultiplier * 3
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 4,
        ),
        Container(
          height: height * 8,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1
                  ),
                  bottom: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1
                  )
              )
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 1.3
                      ),
                      child: Image.asset('images/image3.png')),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(
                      left: width * 5
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Wings',
                    style: TextStyle(
                        fontFamily: 'AvenirL',
                        color: Colors.white,
                        fontSize: SizeConfig.textMultiplier * 3
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 4,
        ),
        Container(
          height: height * 8,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1
                  ),
                  bottom: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1
                  )
              )
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 1.3
                      ),
                      child: Image.asset('images/closet icon - orange.png')),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(
                      left: width * 5
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recent',
                    style: TextStyle(
                        fontFamily: 'AvenirL',
                        color: Colors.white,
                        fontSize: SizeConfig.textMultiplier * 3
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 16,
        ),
      ],
    );
  }
}
