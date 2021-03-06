import 'dart:async';
import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:eschool/size_helpers.dart';
import 'package:flutter/material.dart';

import 'internet.dart';
import 'web.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Check());
  }
}

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  Future<bool> connectivityChecker() async {
    var connected = false;
    print("Checking internet...");
    try {
      final result = await InternetAddress.lookup('google.com');
      final result2 = await InternetAddress.lookup('facebook.com');
      final result3 = await InternetAddress.lookup('microsoft.com');
      if ((result.isNotEmpty && result[0].rawAddress.isNotEmpty) ||
          (result2.isNotEmpty && result2[0].rawAddress.isNotEmpty) ||
          (result3.isNotEmpty && result3[0].rawAddress.isNotEmpty)) {
        connected = true;
        setState(() {
          check();
        });
      } else {
        connected = false;
        setState(() {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Internet()));
        });
      }
    } on SocketException catch (_) {
      connected = false;
      setState(() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Internet()));
      });
    }
    return connected;
  }

  check() async {
    Timer(Duration(seconds: 3), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    connectivityChecker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Image(
            image: AssetImage(
              "assets/image.png",
            ),
          ),
        ),
        SizedBox(
          height: displayWidth(context) * 0.05,
        ),
        Center(
            child: TypewriterAnimatedTextKit(
          text: ['Welcome to eSchool'],
          textStyle: TextStyle(
            fontSize: displayWidth(context) * .06,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        )),
      ],
    ));
  }
}
