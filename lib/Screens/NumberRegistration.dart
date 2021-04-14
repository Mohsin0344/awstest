import 'package:chrp/Constants/SizeConfig.dart';
import 'package:chrp/Screens/OTPCheck.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:page_transition/page_transition.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// import 'package:chrp/amplifyconfiguration.dart';

class NumberRegistration extends StatefulWidget {
  @override
  _NumberRegistrationState createState() => _NumberRegistrationState();
}

class _NumberRegistrationState extends State<NumberRegistration> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;
  var controller;
  TextEditingController phoneNumber = TextEditingController();
  bool _amplifyConfigured = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          color: Color(0xff202441),
          child: ListView(
            children: [
              SizedBox(
                height: height * 10,
              ),
              Container(
                height: height * 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 12
                ),
                child: Container(
                  child: Text(
                      'Please enter your number',
                  style: TextStyle(
                    color: Color(0xffDEDEDE),
                    fontSize: SizeConfig.textMultiplier * 2.6
                  ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 0.5,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.widthMultiplier * 12
                ),
                child: Container(
                  child: Text(
                    'for verification...',
                    style: TextStyle(
                        color: Color(0xffDEDEDE),
                        fontSize: SizeConfig.textMultiplier * 2.6
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(
                height: height * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 12
                ),
                child: IntlPhoneField(
                  controller: phoneNumber,
                  style: TextStyle(
                    color: Colors.white
                  ),
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'PK',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                      controller = phone.completeNumber;
                    print('*********************** ${controller}');
                  },

                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 4.5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 12
                ),
                child: Container(
                  height: height * 6,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: width * 52
                    ),
                    child: Container(
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: OTPCheck(mobileNumber: controller ,)
                              )
                          );
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: SizeConfig.textMultiplier * 2.8,
                              fontFamily: 'AvenirL'
                          ),
                        )
                        ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        color: Color(0xffA77FA9),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 4,
              ),
              Container(
                child: Text(
                  'By clicking next you are agreeing \n to all the user'
                      ' terms and \n services',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.textMultiplier * 2.0,
                      fontFamily: 'AvenirL',
                    fontWeight: FontWeight.w300
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
