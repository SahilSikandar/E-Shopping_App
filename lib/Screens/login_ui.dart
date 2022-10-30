import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:login_ui/Screens/home_page.dart';
import 'package:login_ui/themes.dart';
import 'package:login_ui/utilis/Routes.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:email_validator/email_validator.dart';

class Login_App extends StatefulWidget {
  const Login_App({Key? key}) : super(key: key);

  @override
  State<Login_App> createState() => _Login_AppState();
}

void _changescreen(BuildContext context) {
  Navigator.pushNamed(context, routes.signupRoute);
}

class _Login_AppState extends State<Login_App> {
  late bool _passwordvisible;
  //  static bool validate(String email,
  //     )
  //   String email = 'fredrik.eilertsen@gail.com';
  //  final bool isValid = EmailValidator.validate(email);
  //String _errormessage = '';

  @override
  // void validateEmail(String val,
  //     [bool allowTopLevelDomains = false, bool allowInternational = true]) {
  //   if (val.isEmpty) {
  //     setState(() {
  //       _errormessage = "Email cannot be empty";
  //     });
  //   } else if (!EmailValidator.validate(val, true)) {
  //     setState(() {
  //       _errormessage = "Invalid Email address";
  //     });
  //   } else {
  //     setState(() {
  //       _errormessage = "";
  //     });
  //   }
  // }

  void initState() {
    // TODO: implement initState
    _passwordvisible = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Lottie.asset("assets/login_lottie.json", width: 300, height: 300),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  //  autovalidateMode: AutovalidateMode.always,
                  //onChanged: (value) => validateEmail(value),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Colors.deepPurple,
                      ),
                      label: const Text(
                        "Email",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                      hintText: "Email",
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: MyTheme.creamColor,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.deepPurple,
                        width: 1,
                        style: BorderStyle.solid,
                      ))),
                ),
              ),
              // Text(
              //   _errormessage,
              //   style: TextStyle(color: Colors.red),
              // ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  obscureText: !_passwordvisible,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.deepPurple,
                      ),
                      label: Text("Password",
                          style: TextStyle(color: Colors.deepPurple)),
                      hintText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordvisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.deepPurple,
                        ),
                        onPressed: () => setState(() {
                          _passwordvisible = !_passwordvisible;
                        }),
                      ),
                      filled: true,
                      border: OutlineInputBorder(),
                      fillColor: MyTheme.creamColor,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple,
                              width: 1,
                              style: BorderStyle.solid))),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(routes.homeRoute);
                },
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont't Have an Account?",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: context.theme.accentColor),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                      onTap: () {
                        _changescreen(context);
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
