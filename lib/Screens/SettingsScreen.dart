import 'package:chrp/Constants/SizeConfig.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Color(0xff202441),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: width * 4,
            vertical: height * 6
          ),
          children: [
            SizedBox(
              height: height * 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 4
              ),
              child: Container(
                height: height * 5,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xffDEDEDE),
                            size: SizeConfig.textMultiplier * 5,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: width * 2
                                ),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Settings',
                                    style: TextStyle(
                                      color: Color(0xffDEDEDE),
                                      fontFamily: 'AvenirL',
                                      fontSize: SizeConfig.textMultiplier * 4
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Color(0xffDEDEDE),
              thickness: 2,
              indent: 54,
              endIndent: 150,
            ),
            SizedBox(
              height: height * 6,
            ),
            Container(
              padding: EdgeInsets.only(
                left: width * 6
              ),
              height: height * 10,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xffDEDEDE).withOpacity(0.3),
                    width: 1,
                  ),
                )
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: height * 2.5
                      ),
                      child: Container(
                        child: Image.asset('images/mobile.png',
                          color: Color(0xffDEDEDE),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: height * 2
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Display Settings',
                                style: TextStyle(
                                  color: Color(0xffDEDEDE),
                                  fontSize: SizeConfig.textMultiplier * 3,
                                  fontFamily: 'AvenirL'
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Change looks of app',
                                style: TextStyle(
                                    color: Color(0xffDEDEDE),
                                    fontSize: SizeConfig.textMultiplier * 2.2,
                                    fontFamily: 'AvenirL'
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
            Container(
              padding: EdgeInsets.only(
                  left: width * 6
              ),
              height: height * 10,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1,
                    ),
                  )
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 2.5
                      ),
                      child: Container(
                        child: Image.asset('images/vibration.png',
                          color: Color(0xffDEDEDE),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: height * 2,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Sound and Vibration',
                                style: TextStyle(
                                    color: Color(0xffDEDEDE),
                                    fontSize: SizeConfig.textMultiplier * 3,
                                    fontFamily: 'AvenirL'
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Change sound and vibration of \n chrps',
                                style: TextStyle(
                                    color: Color(0xffDEDEDE),
                                    fontSize: SizeConfig.textMultiplier * 1.8,
                                    fontFamily: 'AvenirL'
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
            Container(
              padding: EdgeInsets.only(
                  left: width * 6
              ),
              height: height * 10,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1,
                    ),
                  )
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 2.5,
                        horizontal: width * 4
                      ),
                      child: Container(
                        child: Image.asset('images/voicemail.png',
                          color: Color(0xffDEDEDE),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 2
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Voicemail',
                                style: TextStyle(
                                    color: Color(0xffDEDEDE),
                                    fontSize: SizeConfig.textMultiplier * 3,
                                    fontFamily: 'AvenirL'
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.only(
                                right: width * 2
                              ),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Check the voicemail messages',
                                style: TextStyle(
                                    color: Color(0xffDEDEDE),
                                    fontSize: SizeConfig.textMultiplier * 1.8,
                                    fontFamily: 'AvenirL'
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
            Container(
              padding: EdgeInsets.only(
                  left: width * 6
              ),
              height: height * 10,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1,
                    ),
                  )
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 2.5
                      ),
                      child: Container(
                        child: Image.asset('images/call.png',
                          color: Color(0xffDEDEDE),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: height * 2
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Caller Id and Spam',
                                style: TextStyle(
                                    color: Color(0xffDEDEDE),
                                    fontSize: SizeConfig.textMultiplier * 3,
                                    fontFamily: 'AvenirL'
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Caller Id of people chirped and spam chrps',
                                style: TextStyle(
                                    color: Color(0xffDEDEDE),
                                    fontSize: SizeConfig.textMultiplier * 1.8,
                                    fontFamily: 'AvenirL'
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
            Container(
              padding: EdgeInsets.only(
                  left: width * 6
              ),
              height: height * 10,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Color(0xffDEDEDE).withOpacity(0.3),
                      width: 1,
                    ),
                  )
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 2.5
                      ),
                      child: Container(
                        child: Image.asset('images/blocked.png',
                          color: Color(0xffDEDEDE),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 2
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Blocked Numbers',
                                style: TextStyle(
                                    color: Color(0xffDEDEDE),
                                    fontSize: SizeConfig.textMultiplier * 3,
                                    fontFamily: 'AvenirL'
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'View and remove blocked numbers',
                                style: TextStyle(
                                    color: Color(0xffDEDEDE),
                                    fontSize: SizeConfig.textMultiplier * 1.8,
                                    fontFamily: 'AvenirL'
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

          ],
        ),
      ),
    );
  }
}
