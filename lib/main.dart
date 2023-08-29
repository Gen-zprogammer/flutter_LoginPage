import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              height: getSmallDiameter(context),
              width: getSmallDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                ),
              ),
            ),
          ),
          Positioned(
            left: -getSmallDiameter(context) / 4,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              child: Center(
                child: Text(
                  "Hello",
                  style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              height: getBigDiameter(context),
              width: getBigDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                ),
              ),
            ),
          ),
          Positioned(
            right: -getSmallDiameter(context) / 2,
            bottom: -getSmallDiameter(context) / 2,
            child: Container(
              height: getBigDiameter(context),
              width: getBigDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E9EE),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[900]!,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: const Icon(
                              Icons.email,
                              color: Color(0xFFFF4891),
                              size: 24.0,
                            ),
                            labelText: 'E-mail',
                            labelStyle: TextStyle(
                              color: Colors.blueGrey,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF4891)),
                            ),
                            helperText: "What's your name?",
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          icon: const Icon(
                            Icons.vpn_key,
                            color: Color(0xFFFF4891),
                            size: 24.0,
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFF4891)),
                          ),
                          helperText: "Input your password",
                        ),
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Text(
                          "FORGOT PASSWORD?",
                          style: TextStyle(
                            color: Color(0xFFFF4891),
                          ),
                        ))),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(40),
                              splashColor: Colors.white30,
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                          mini: true,
                          elevation: 0,
                          child: Image.network(
                            "https://th.bing.com/th/id/OIP.T-ekeuUnGE5CqtWaoC0PFgHaHa?w=182&h=181&c=7&r=0&o=5&dpr=1.5&pid=1.7",
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                          onPressed: () {}),
                      FloatingActionButton(
                          mini: true,
                          elevation: 0,
                          child: Image.network(
                            "https://th.bing.com/th/id/OIP.XCjHItePwcZFIQe-JbZWigHaHa?w=187&h=187&c=7&r=0&o=5&dpr=1.5&pid=1.7",
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFFFF4891),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
