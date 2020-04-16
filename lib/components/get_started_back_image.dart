import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

//this is just to nicely animate the background image for the get started screen
class GetStartedBackImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //this allows us to fade an image in
        FadeInImage(
          placeholder: MemoryImage(kTransparentImage),
          image: AssetImage('images/getStartedBack.png'),
          fadeInDuration: Duration(milliseconds: 100),
        ),
        FadeInImage(
          placeholder: MemoryImage(kTransparentImage),
          image: AssetImage('images/getStartedFront.png'),
          fadeInDuration: Duration(milliseconds: 2000),
        ),
      ],
    );
  }
}
