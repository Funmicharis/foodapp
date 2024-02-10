import 'package:flutter/material.dart';
import 'package:foodrecipe/IReview.dart';
import 'package:foodrecipe/IAuthor.dart';
import 'package:foodrecipe/IMageDisplay.dart';
import 'package:foodrecipe/IRecipe.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Flutter Food App',
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
         leading: Icon(Icons.arrow_back),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(Icons.more_horiz),
        ),
      ],
      ),
      body:   SingleChildScrollView(
        child: 
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How to make french\ntoast",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 17,
              ),
              IMageDisplay(bgImage: "assets/images/image.png"),
              const SizedBox(
                height: 14,
              ),
            IReview(rating: 4.5),
              const SizedBox(
                height: 12,
              ),
              IAuthor(image: "assets/images/unsplash.png", name: "Roberta Anny", location: "Bali, Indonesia"),
              const SizedBox(
                height: 20,
              ),
          Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ingredients",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
            ),
            Text(
              "5 items",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        IRecipe(image: "assets/images/coffees.png", name: "Milk", weight: "200"),
        const SizedBox(
          height: 15,
        ),
        IRecipe(image: "assets/images/burgers.png", name: "Bread", weight: "200"),
        const SizedBox(
          height: 15,
        ),
        IRecipe(image: "assets/images/coffees.png", name: "Eggs", weight: "200"),
        const SizedBox(
          height: 15,
        ),
        IRecipe(image: "assets/images/burgers.png", name: "Cheese", weight: "200"),
         const SizedBox(
          height: 15,
        ),
        IRecipe(image: "assets/images/coffees.png", name: "Strawberry", weight: "200"),

      ],
    ),
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }
}
