import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  String bgImage;
  
   ImageDisplay({super.key, required this.bgImage});

  @override
  Widget build(BuildContext context) {
    return Center(child:Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(bgImage
           ,
            ),
          ),
        ),
        Image.asset("assets/images/Play_button.png", fit: BoxFit.cover),
      ],
    ) );
  }
}
