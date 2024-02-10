import 'package:flutter/material.dart';

class IAuthor extends StatelessWidget {
  String image;
  String name;
  String location;

  IAuthor({super.key, required  this.image, required  this.name, required  this.location });

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Container(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/location.png",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
        ElevatedButton(
          onPressed: () {},
          child: Text('Follow'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            padding:
            EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // <-- Radius
            ),
          ),
        ),
      ],
    );
  }
}
