import 'package:flutter/material.dart';
import 'package:mobmart/constants.dart';

class LoginSignupSwitch extends StatelessWidget {
  final String prompt;
  final Function onPress;
  final String navigateTo;

  LoginSignupSwitch(
      {@required this.prompt,
      @required this.onPress,
      @required this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            prompt,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: onPress,
            child: Text(
              navigateTo,
              style: TextStyle(
                  fontWeight: FontWeight.w800, color: kMobBlue, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
