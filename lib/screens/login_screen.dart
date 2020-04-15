import 'package:flutter/material.dart';
import 'package:mobmart/components/text_field.dart';
import 'package:mobmart/components/rounded_button.dart';
import 'package:mobmart/components//SocialIcon.dart';
import 'package:mobmart/CustomIcons.dart';

import '../constants.dart';


class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 60,
        child: Image.asset('images/logo.png'),
      ),
    );
    final email = CustomTextField(
      keyboardType: TextInputType.emailAddress,
      obscureText: false,
      icon: Icons.email,
      textEditingController: emailController,
      hint: "Email",
    );
    final password = CustomTextField(
      keyboardType: TextInputType.emailAddress,
      textEditingController: passwordController,
      icon: Icons.lock,
      obscureText: true,
      hint: "Password",
    );
    final loginIntro=  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
            'Login',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins-Medium',
              fontSize: 30,
                fontWeight: FontWeight.bold,
            )
        )
      ],
    );
    final loginDescrip=  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
            'Please login to your account.',
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Poppins-Medium',
              fontSize: 20,
            )
        )
      ],
    );
    final loginButton= RoundedButton(
      onPressed: () {},
      title: 'LOGIN',
      color: kMobBlue,
    );
    final forgotLabel =
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
    FlatButton(
      child: Text(
        'Forgot password?',
        textAlign: TextAlign.right,
        style: TextStyle(color: kMobBlue),
      ),
      onPressed: () {},
    )]
      );
    final orLogin=  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
            'OR',
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Poppins-Medium',
              fontSize: 20,
            )
        )
      ],
    );
    final signUp= Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Don't have an account?",
            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              ;
              print("Routing to Sign up screen");
            },
            child: Text(
              "Sign up",
              style: TextStyle(
                  fontWeight: FontWeight.w800, color: kMobBlue, fontSize:  14),
            ),
          )
        ],
      ),
    );
    final socialLogin =Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialIcon(
          colors: [
            Colors.white,
            Colors.white,
            Colors.white,
          ],

          images: AssetImage('images/fblogo.png'),
          onPressed: () {},
        ),
        SocialIcon(
          colors: [
            Colors.white,
            Colors.white,
            Colors.white,
          ],

          images: AssetImage('images/googlelogo.png'),
          onPressed: () {},
        ),
        SocialIcon(
          colors: [
            Colors.white,
            Colors.white,
            Colors.white,
          ],

          images: AssetImage('images/twitterlogo.png'),
          onPressed: () {},
        ),

      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,

            loginIntro,
            SizedBox(height: 8.0),
            loginDescrip,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,

            forgotLabel,
            SizedBox(height: 14.0),
            loginButton,
            SizedBox(height: 14.0),
            orLogin,
            SizedBox(height: 14.0),
            socialLogin,
            signUp,

          ],
        ),
      ),
    );
  }
}

