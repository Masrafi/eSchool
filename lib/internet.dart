import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Internet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: InternetMobile(),
      tablet: InternetTablet(),
    );
  }
}

class InternetMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Connect internet connection, clear history and try again",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InternetTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Connect internet connection, clear history and try again",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
