import 'package:flutter/material.dart';
import 'package:login_ui/themes.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _nameState();
}

class _nameState extends State<signup> {
  late bool _obsecure;
  late bool _obsecure1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _obsecure = false;
    _obsecure1 = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          "Sign up",
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
          children: [
            Text(
              "Let's Get Started",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.deepPurple),
            ),
            Text(
              "Create An Account",
              style:
                  TextStyle(fontSize: 15, color: Theme.of(context).accentColor),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                //keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.deepPurple,
                    ),
                    label: Text("Name",
                        style: TextStyle(color: Colors.deepPurple)),
                    hintText: "Name",
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                //keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.deepPurple,
                    ),
                    label: Text("Email",
                        style: TextStyle(color: Colors.deepPurple)),
                    //(color: Colors.deepPurple),),
                    hintText: "Email",
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.deepPurple,
                    ),
                    label: Text("Phone Number",
                        style: TextStyle(color: Colors.deepPurple)),
                    hintText: "Phone Number",
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                obscureText: !_obsecure,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.deepPurple,
                    ),
                    label: Text("Password",
                        style: TextStyle(color: Colors.deepPurple)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obsecure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.deepPurple,
                      ),
                      onPressed: () {
                        setState(() {
                          _obsecure = !_obsecure;
                        });
                      },
                    ),
                    hintText: "Password",
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                obscureText: !_obsecure1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.deepPurple,
                    ),
                    label: Text(
                      "Confirm Password",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    hintText: "Confirm Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obsecure1 ? Icons.visibility : Icons.visibility_off,
                        color: Colors.deepPurple,
                      ),
                      onPressed: () {
                        setState(() {
                          _obsecure1 = !_obsecure1;
                        });
                      },
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
            Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text("Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17)),
                )),
          ],
        )),
      ),
    );
  }
}
