import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Mystyle {
  Widget title(String text) => Text(
        text,
        style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      );
  // ignore: non_constant_identifier_names
  Widget Subtitle1(String text) => Text(
        text,
        style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      );
  Widget Subtitl2(String text) => Text(
        text,
        style: const TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
      );
  Mystyle();
}
