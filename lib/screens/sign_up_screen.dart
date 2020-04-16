import 'package:flutter/material.dart';
import 'package:mobmart/components/login_signup_switch.dart';
import 'package:mobmart/components/rounded_button.dart';
import 'package:mobmart/components/text_field.dart';
import 'package:mobmart/constants.dart';
import 'package:mobmart/screens/login_screen.dart';

class SignUp extends StatelessWidget {
  static const id = 'Sign Up';
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController confirmController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                //group the two text fields
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Sign Up', style: kSignUpLoginStyleMain),
                    Text(
                      'Create a new account',
                      style: kSignUpLoginStyleSec,
                    ),
                  ],
                ),
                //separates the edits from the headings
                SizedBox(height: 24.0),
                CustomTextField(
                  hint: 'Full Name',
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  icon: Icons.account_circle,
                  textEditingController: nameController,
                ),
                SizedBox(height: kSignupSeparation),
                CustomTextField(
                  hint: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  icon: Icons.email,
                  textEditingController: emailController,
                ),
                SizedBox(height: kSignupSeparation),
                CustomTextField(
                  hint: 'Password',
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  icon: Icons.lock,
                  textEditingController: passController,
                ),
                SizedBox(height: kSignupSeparation),
                CustomTextField(
                  hint: 'Confirm Password',
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  icon: Icons.lock,
                  textEditingController: confirmController,
                ),
                SizedBox(height: kSignupSeparation),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RoundedButton(
                      onPressed: () {
                        //TODO: Handle Sign Up Logic
                      },
                      color: kMobBlue,
                      //TODO: Check if this fits or if I should rather day register
                      title: 'SIGN UP',
                    ),
                  ],
                ),
                LoginSignupSwitch(
                  prompt: "Already have an account?",
                  navigateTo: "Log In",
                  onPress: () {
                    Navigator.pushNamed(context, Loginpage.id);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
