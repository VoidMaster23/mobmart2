import 'package:flutter/material.dart';


import '../constants.dart';

// this is the default textfield which can be reused
class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconData icon;




  CustomTextField(
      {this.hint,
        this.textEditingController,
        this.keyboardType,
        this.icon,
        this.obscureText= false,
      });

  @override
  Widget build(BuildContext context) {


    return Material(
      borderRadius: BorderRadius.circular(30.0),
      elevation:  12 ,
      child: TextFormField(
        controller: textEditingController,
        keyboardType: keyboardType,
        cursorColor: kMobBlue,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: kMobBlue, size: 20),
          hintText: hint,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}