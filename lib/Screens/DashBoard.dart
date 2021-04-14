import 'package:chrp/Constants/SizeConfig.dart';
import 'package:chrp/Screens/AppDrawer.dart';
import 'package:chrp/Screens/NucleusScreen.dart';
import 'package:chrp/Screens/WingsScreen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;
   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  String layOut =  '1';

  @override
  void initState() {
    // TODO: implement initState
    layOut = '1';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: AppDrawer(),
        backgroundColor: Color(0xff1D213B),
        body: ListView(
          padding: EdgeInsets.only(
            left: width * 2,
            right: width * 2,
            top: height * 7
          ),
          children: [
            Container(
              padding: EdgeInsets.only(
                right: width * 3
              ),
              height: height * 6,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 4
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset('images/logo2.png', fit: BoxFit.cover,),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        right: width * 8
                      ),
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: width * 0.8
                        ),
                        child: Image.asset('images/Search.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: height * 0.8
                        ),
                          child: Image.asset('images/Three dots.png',
                            fit: BoxFit.cover,)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 3
            ),
            Container(
              height: height * 10,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          layOut = '2';
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: width * 0
                        ),
                        alignment: Alignment.center,
                        child: Image.asset('images/image2.png',
                       // fit: BoxFit.cover,
                          height: SizeConfig.imageSizeMultiplier * 20,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          layOut = '3';
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset('images/image3.png',
                      //  fit: BoxFit.cover,
                          height: SizeConfig.imageSizeMultiplier * 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 2
              ),
              child: LayoutBuilder(
                builder: (context, constraints){
                  if(layOut == '1'){
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext, index){
                        return Container(
                            height: height * 12,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Color(0xffDEDEDE).withOpacity(0.3)
                                    )
                                )
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: height * 1.5
                                      ),
                                      child: Stack(
                                        overflow: Overflow.visible,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 1
                                                ),
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: AssetImage('images/01.png'),
                                                    fit: BoxFit.cover
                                                )
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: width * 10,
                                                  top: height * 1
                                              ),
                                              height: height * 4,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xff00E58F)
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '50',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: height * 2
                                    ),
                                    child: Container(
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  '# Redmango',
                                                  style: TextStyle(
                                                      color: Color(0xffE54E00),
                                                      fontFamily: 'AvenirL',
                                                      fontSize: SizeConfig.textMultiplier * 2.5
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: RichText(
                                                  text: TextSpan(
                                                      text: 'sam:',
                                                      style: TextStyle(
                                                          fontFamily: 'AvenirL',
                                                          fontSize: SizeConfig.textMultiplier * 1.5,
                                                          color: Color(0xff00E58F)
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                            text: ' Hi,whats happening?',
                                                            style: TextStyle(
                                                                fontFamily: 'AvenirL',
                                                                color: Colors.white
                                                            )
                                                        )
                                                      ]
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        alignment: Alignment.centerLeft,
                                                        child: Icon(
                                                          Icons.lock_clock,
                                                          color: Colors.purple,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 4,
                                                      child: Container(
                                                        alignment: Alignment.centerLeft,
                                                        child: Icon(
                                                          Icons.lock_clock,
                                                          color: Colors.purple,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: height * 2
                                    ),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(

                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      child: Center(
                                                        child: Container(
                                                          height: height * 4,
                                                          decoration: BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              color: Color(0xff35ADD9)
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              '5k+',
                                                              style: TextStyle(
                                                                  fontFamily: 'AvenirL',
                                                                  color: Colors.white
                                                              ),
                                                              textAlign: TextAlign.center,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              child: Text(
                                                'Today 11:15 am',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'AvenirL'
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                        );
                      },
                    );
                  } else if(layOut == '2'){
                    return NucleusScreen();
                  } else return WingsScreen();
                },
              )
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 2
              ),
              child: Container(
                height: height * 12,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 2,
                        color: layOut == '1' ? Color(0xffDEDEDE).withOpacity(0.3):
                            Colors.transparent
                    )
                  )
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                        _scaffoldKey.currentState.openDrawer();
                        },
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('images/menu.png',
                          height: SizeConfig.imageSizeMultiplier * 6,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            layOut = '1';
                          });
                        },
                        child: Container(
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: width * 20
                              ),
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
