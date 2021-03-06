import 'package:flutter/material.dart';

Size displaySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  return displaySize(context).width;
}

var informationHeader = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);
var informationContent = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontFamily: 'OpenSans',
);

var informationContentAllTender = TextStyle(
  color: Colors.green,
  fontStyle: FontStyle.italic,
  decoration: TextDecoration.underline,
  fontSize: 20,
  fontFamily: 'OpenSans',
);
