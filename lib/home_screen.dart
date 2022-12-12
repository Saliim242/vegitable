import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegitable/cotainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 50),
              ReusableRow(
                image: "assets/v1.jfif",
                titile: "Tomato",
              ),
              ReusableRow(
                image: "assets/v2.jfif",
                titile: "Ansalato",
              ),
              ReusableRow(
                image: "assets/v3.jfif",
                titile: "Tufaax",
              ),
              ReusableRow(
                image: "assets/v4.jpg",
                titile: "Mooos",
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
