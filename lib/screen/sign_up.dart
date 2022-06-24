// ignore_for_file: use_key_in_widget_constructors, invalid_required_positional_param, unused_local_variable

import 'package:flutter/material.dart';
import 'package:food_app/screen/widget/My_text_field.dart';

class SignUp extends StatefulWidget {
  static Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    RegExp regExp = RegExp("SignUp.pattern");

    TextEditingController firstname = TextEditingController();
    TextEditingController lastname = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController Password = TextEditingController();
    GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
    void validation() {
      if (firstname.text.trim().isEmpty || firstname.text.trim() == null) {
        globalKey.currentState?.showBottomSheet(
          (context) => Text("First Name is Empty"),
        );
        return;
      }
      if (lastname.text.trim().isEmpty || lastname.text.trim() == null) {
        globalKey.currentState?.showBottomSheet(
          (context) => Text("Last Name is Empty"),
        );
        return;
      }
      if (email.text.trim().isEmpty || email.text.trim() == null) {
        globalKey.currentState?.showBottomSheet(
          (context) => Text("Email Name is Empty"),
        );
        return;
      }
      else if(!regExp.hasMatch(email.text)){
        globalKey.currentState?.showBottomSheet(
          (context) => Text("Please correct Email"),
        );
        return;

      }
      if (Password.text.trim().isEmpty || Password.text.trim() == null) {
        globalKey.currentState?.showBottomSheet(
          (context) => Text("Password Name is Empty"),
        );
        return;
      }
    }

    return Scaffold(
      key: globalKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              Column(
                children: [
                  MyTextField(
                      controller: firstname,
                      hintText: "First Name",
                      obscureText: false),
                  MyTextField(
                      controller: lastname,
                      hintText: "Last Name",
                      obscureText: false),
                  MyTextField(
                      controller: email, hintText: "Email", obscureText: false),
                  MyTextField(
                      hintText: "Password",
                      obscureText: true,
                      controller: Password),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(120, 30),
                      primary: Colors.grey,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      validation();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(120, 30),
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
