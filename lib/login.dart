import 'package:flutter/material.dart';

import 'dashboard.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffabdc55),
        child: Column(
          children: [
            Container(
              
              padding: EdgeInsets.fromLTRB(24, 74, 0, 44),
              width: double.infinity,
              child: Text("Welcome\nBack!",style: TextStyle(color: Colors.white, fontSize: 28)),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(24, 30, 24, 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextField(
                        decoration:
                            InputDecoration(hintText: "Enter Email or Mobile"),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: "Password"),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Forgot Password"),
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            FlatButton(
                              color: Color(0xff3e45a9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Dashboard()));
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("or "),
                                Text(
                                  "Sign up",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
