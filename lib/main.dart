import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'neumorphism/neumorphism_tools.dart';

void main() => runApp(NeumorphicApp());

class NeumorphicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blueGrey.shade200,
        scaffoldBackgroundColor: Colors.blueGrey.shade200,
        dialogBackgroundColor: Colors.blueGrey.shade200,

      ),
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 400,
              //padding: EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Welcome to Login',
                    style: GoogleFonts.lobster(
                      fontSize: 24,
                      color: Colors.blueGrey.shade800
                    ),
                  ),
                  SizedBox(height: 30,),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              NeumorphicContainer(
                                child: TextFormField(
                                  cursorColor: Colors.black,
                                  decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding:
                                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                      hintText: 'Username'),
                                ),
                              ),
                              SizedBox(height: 20,),
                              NeumorphicContainer(
                                child: TextFormField(
                                  cursorColor: Colors.black,
                                  decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding:
                                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                      hintText: 'Password'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NeumorphicContainer(
                              child: FlatButton(
                                child: Text('Login'.toUpperCase()),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}