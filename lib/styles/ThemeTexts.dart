import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle notificationBody(){
  return const TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16.0);
}

TextStyle notificationTime(){
  return const TextStyle(
      color: Colors.black54,
      fontFamily: 'Montserrat',
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 12.0);
}

TextStyle requestTitle(){
  return const TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 16.0);
}

TextStyle profileTitle(){
  return const TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 22.0);
}
TextStyle profileBio(){
  return const TextStyle(
      color: Colors.black54,
      fontFamily: 'Montserrat',
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16.0);
}
