import 'package:flutter/material.dart';
import 'package:mobile_delivery_app/pages/Homepage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: const Color(0xFFd0cece)),
      home: const HomePage(),
    ));
