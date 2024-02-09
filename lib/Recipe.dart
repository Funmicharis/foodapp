import 'package:flutter/material.dart';

class IRecipe extends StatelessWidget {
  String image;
  String name;
  String weight;


   IRecipe({super.key, required this.image, required this.name, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.transparent, width: 2),
        color: Colors.blueGrey.withAlpha(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.transparent, width: 2),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(9),
                child: Image.asset(image,
                    fit: BoxFit.cover),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Text(
            "$weight g",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
