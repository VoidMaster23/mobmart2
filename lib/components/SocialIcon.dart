import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final List<Color> colors;
  final IconData icondata;
  final Function onPressed;
  final AssetImage images;
  SocialIcon({
    this.colors,
    this.icondata,
    this.onPressed,
    this.images
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0),
      child: Material(
        elevation:  8.0,
        shape: CircleBorder(),
      child: Container(
          width: 45.0,
          height: 45.0,

          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: colors,

              )
          ),

          child: RawMaterialButton(
              shape: CircleBorder(),

              onPressed: onPressed,
    child: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: images,
    fit: BoxFit.cover),
    ),
              child: Icon(icondata, color: Colors.white),

          )
      ),
      ),
    )
    );

  }
}