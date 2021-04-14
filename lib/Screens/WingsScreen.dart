import 'package:flutter/material.dart';

class WingsScreen extends StatefulWidget {
  @override
  _WingsScreenState createState() => _WingsScreenState();
}

class _WingsScreenState extends State<WingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 468,
      child: Center(
        child: Text(
          'Contacts available on CHRP',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'AvenirL'
          ),
        ),
      ),
    );
  }
}
