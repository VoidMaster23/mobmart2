import 'package:flutter/material.dart';
import 'package:mobmart/components/get_started_back_image.dart';
import 'package:mobmart/components/rounded_button.dart';
import 'package:mobmart/screens/login_screen.dart';
import 'package:transparent_image/transparent_image.dart';

import '../constants.dart';
import 'sign_up_screen.dart';

//this might change
class GetStarted extends StatelessWidget {
  static const id = 'Get Started';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  fadeInDuration: Duration(milliseconds: 1200),
                  image: AssetImage('images/logo.png'),
                ),
              ),
              GetStartedBackImage(),
              Text(
                'Digital payment made easy',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RoundedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUp.id);
                    },
                    title: 'Get Started',
                    color: kMobBlue,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already have an Account?",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Loginpage.id);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: kMobBlue,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
