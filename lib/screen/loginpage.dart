import 'package:flutter/material.dart';
import 'package:food_app/screen/widget/My_text_field.dart';

class LoginPage extends StatelessWidget {
  
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // // Widget textfield(@required String hintText, IconData icon) {
    // //   return TextField(
    // //     decoration: InputDecoration(
    // //         prefixIcon: Icon(
    // //           icon,
    // //           color: Colors.grey,
    // //         ),
    // //         hintText: hintText,
    // //         hintStyle: TextStyle(color: Colors.grey),
    // //         enabledBorder: UnderlineInputBorder(
    // //             borderSide: BorderSide(color: Colors.grey))),
    // //   );
    // }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login Page",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                MyTextField(
                    controller: Email, hintText: "Email", obscureText: false),
                SizedBox(height: 20),
                MyTextField(
                    controller: Password, hintText: "Password", obscureText: true)
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 30),
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 17),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "New User ?",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  " Register Now",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
