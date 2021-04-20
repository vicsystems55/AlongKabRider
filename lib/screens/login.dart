import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:argon_flutter/widgets/input.dart';

import 'package:argon_flutter/widgets/drawer.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _checkboxValue = false;

  final double height = window.physicalSize.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(transparent: true, title: ""),
        extendBodyBehindAppBar: true,
        drawer: ArgonDrawer(currentPage: "Account"),
        body: Stack(
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: AssetImage("assets/img/register-bg.png"),
            //           fit: BoxFit.cover)),
            // ),
            SafeArea(
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16, left: 24.0, right: 24.0, bottom: 5),
                  child: Container(
                      // elevation: 5,
                      // clipBehavior: Clip.antiAlias,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(4.0),
                      // ),
                      child: Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          // decoration: BoxDecoration(
                          //     color: ArgonColors.white,
                          //     border: Border(
                          //         bottom: BorderSide(
                          //             width: 0.5, color: ArgonColors.muted)

                          //             )

                          //             ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text("Welcome back sign in",
                                    style: TextStyle(
                                        color: ArgonColors.text,
                                        fontSize: 16.0)),
                              )),
                              // Padding(
                              //   padding: const EdgeInsets.only(bottom: 8.0),
                              //   child: Row(
                              //     mainAxisAlignment:
                              //         MainAxisAlignment.spaceAround,
                              //     children: [],
                              //   ),
                              // ),
                              // Divider()
                            ],
                          )),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Input(
                                            borderColor: ArgonColors.success,
                                            placeholder: "Email",
                                            prefixIcon: Icon(Icons.email)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Input(
                                            borderColor: ArgonColors.success,
                                            placeholder: "Password",
                                            prefixIcon: Icon(Icons.lock)),
                                      ),
                                      // Padding(
                                      //   padding:
                                      //       const EdgeInsets.only(left: 24.0),
                                      //   child: RichText(
                                      //       text: TextSpan(
                                      //           text: "password strength: ",
                                      //           style: TextStyle(
                                      //               color: ArgonColors.muted),
                                      //           children: [
                                      //         TextSpan(
                                      //             text: "strong",
                                      //             style: TextStyle(
                                      //                 fontWeight:
                                      //                     FontWeight.w600,
                                      //                 color:
                                      //                     ArgonColors.success))
                                      //       ])),
                                      // ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Center(
                                      child: FlatButton(
                                        padding: EdgeInsets.only(
                                          left: 120,
                                          right: 120,
                                        ),
                                        textColor: ArgonColors.white,
                                        color: ArgonColors.success,
                                        onPressed: () {
                                          // Respond to button press
                                          Navigator.pushNamed(context, '/home');
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.0,
                                                right: 1.0,
                                                top: 12,
                                                bottom: 12),
                                            child: Text("LOGIN",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.0))),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 0, bottom: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // Checkbox(
                                        //     activeColor: ArgonColors.white,
                                        //     onChanged: (bool newValue) =>
                                        //         setState(() =>
                                        //             _checkboxValue = newValue),
                                        //     value: _checkboxValue),
                                        Text("Don't have an account?",
                                            style: TextStyle(
                                                color: ArgonColors.black,
                                                fontWeight: FontWeight.w200)),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/account');
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text("Sign up",
                                                  style: TextStyle(
                                                      color:
                                                          ArgonColors.success)),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ))
                    ],
                  )),
                ),
              ]),
            )
          ],
        ));
  }
}
