// ignore_for_file: invalid_required_positional_param

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class WellcomePage extends StatelessWidget {
  // const welcomepage({super.key});
  Widget button(@required String name, Color color, @required Color textcolor) {
    // ignore: sized_box_for_whitespace
    return Container(
        height: 43,
        width: 200,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: color,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.green,width: 2),
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(
              name,
              style: TextStyle(fontSize: 16,color:textcolor),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
                child: Center(
              child: Image.asset("images/logo.jpg"),
            )),
          ),
          Expanded(
              // ignore: avoid_unnecessary_containers
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Welcome To Tastee",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Column(
                  children: [
                    Text("Order Food From our Resturent"),
                    Text("Make Reservation In real time"),
                  ],
                ),
                button("Login Page", Colors.green,Colors.white),
                button("Sign Up", Colors.white, Colors.green),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
