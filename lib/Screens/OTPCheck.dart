import 'package:chrp/Constants/SizeConfig.dart';
import 'package:chrp/Screens/DashBoard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OTPCheck extends StatefulWidget {
  var mobileNumber;
  OTPCheck({this.mobileNumber});
  @override
  _OTPCheckState createState() => _OTPCheckState();
}

class _OTPCheckState extends State<OTPCheck> {
  static const platform = const MethodChannel('flutter.native/helper');
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    //color: const Color.fromRGBO(43, 46, 66, 1),
    color: Color(0xff1D213B),
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(color: Color(0xffDEDEDE)),
  );
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String _verificationCode;
  var id;

  @override
  void initState() {
    // TODO: implement initState
    // javascriptRuntime = getJavascriptRuntime();
    super.initState();
    _verifyPhone();
  }

  @override
  Widget build(BuildContext context) {
    print("Phone number received --->>>${widget.mobileNumber}");
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
              SizedBox(
                height: height * 2,
              ),
              Container(
                child: Text(
                  'Please enter 4 digit OTP Code',
                  style: TextStyle(
                    fontFamily: 'AvenirL',
                    color: Color(0xffDEDEDE),
                    fontSize: SizeConfig.textMultiplier * 2.3
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: height * 2.5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0
                ),
                child: Container(
                  child:  PinPut(
                    fieldsCount: 6,
                    textStyle: const TextStyle(fontSize: 25.0, color: Color(0xff00A9A5)),
                    eachFieldWidth: width * 12,
                    eachFieldHeight: height * 8,
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    submittedFieldDecoration: pinPutDecoration,
                    selectedFieldDecoration: pinPutDecoration,
                    followingFieldDecoration: pinPutDecoration,
                    pinAnimationType: PinAnimationType.fade,
                    fieldsAlignment: MainAxisAlignment.spaceAround,
                    onSubmit: (pin) async{
                      // _verifyPhone();
                      try {
                        await FirebaseAuth.instance
                            .signInWithCredential(PhoneAuthProvider.credential(
                            verificationId: _verificationCode, smsCode: pin))
                            .then((value) async {
                          if (value.user != null) {
                            // print('**********fwefwefew*******************************************${value.user.getIdToken(true)}');
                            value.user.getIdToken().then((token){
                              print('This is hopefully a token $token');
                              setState(() {
                                id = token;
                              });
                              printy();
                            });
                            print("printing token here");
                            print(value.credential);
                            print('User UID is--------->>>>${value.user.uid}');
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => DashBoardScreen()));
//                      Navigator.pushAndRemoveUntil(
//                          context,
//                          MaterialPageRoute(builder: (context) => checkScreen(value.user.phoneNumber)),
//                              (route) => false);
                          }
                        });
                      } catch (e) {
                        FocusScope.of(context).unfocus();
                        _scaffoldkey.currentState
                            .showSnackBar(SnackBar(content: Text('invalid OTP')));
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 4.5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 8
                ),
                child: Container(
                  height: height * 6,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: width * 58
                    ),
                    child: Container(
                      child: RaisedButton(
                        onPressed: () async {
                          printy();
                          // Navigator.push(
                          //     context,
                          //     PageTransition(
                          //         type: PageTransitionType.rightToLeft,
                          //         child: DashBoardScreen()
                          //     )
                          // );
                        },
                        child: Text(
                          'Finish',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: SizeConfig.textMultiplier * 2.8,
                              fontFamily: 'AvenirL'
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        color: Color(0xffA77FA9),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  _verifyPhone() async {
    print('Im here in verify phone ${widget.mobileNumber}');
    FirebaseAuth _auth = FirebaseAuth.instance;
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '${widget.mobileNumber}',
        verificationCompleted: (PhoneAuthCredential credential) async {
      var result = await _auth.signInWithCredential(credential);
      var user = result.user;

      if (user != null) {
        // print('*****************************************************${result.user.getIdToken(true)}');
        print('Log in success');
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => homeScreen(
        //           user: user,
        //         )));
      } else {
        print("Error");
      }
    },

    // await FirebaseAuth.instance
          //     .signInWithCredential(credential)
          //     .then((value) async {
          //   print("printing token here");
          //  // print(value.credential);
          //   if (value.user != null) {
          //     print('User UID is--------->>>>${value.user.getIdToken()}');
          //     print(value.credential);
          //     print(value.additionalUserInfo);
          //     // value.user.getIdToken().then((token) {
          //     //   setState(() {
          //     //     id = token;
          //     //     print('User token is--------->>>>$id');
          //     //   }
          //     //   );
          //     // });
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => DashBoardScreen()));
          //   }
          // });
        // },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verficationID, int resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }

  void printy() async {
    print('id is................................................$id');
    String value = '';
    print('In printy function...........................................');
    try {
      //  value = await platform.invokeMethod("helloFromNativeCode");
      value = await platform.invokeMethod("helloFromNativeCode",{"id":id});
    } catch (e) {
      print(e);
    }
    print("token id from javanative:"+value);
  }

}


