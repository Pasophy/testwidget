import 'package:flutter/material.dart';
import 'package:flutter_appbasic/mystate/createaccunt.dart';
import 'package:flutter_appbasic/myconstants/myconstants.dart';
import 'package:flutter_appbasic/mystate/mybutton.dart';
import 'package:flutter_appbasic/mystate/mytextbox.dart';
import 'mystate/myhome.dart';

final Map<String, WidgetBuilder> route = {
  '/myhome': (BuildContext context) => const Myhome(),
  '/myconstants': (BuildContext context) => const Createaccunt(),
  '/mybutton': (BuildContext context) =>const Mybuttom(),
  '/mytextbox': (BuildContext context) =>const Mytextbox(),

};

String? initialroute;

void main() {
  initialroute = Myconstants().myhomes;
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Myhome(),
      routes: route,
      initialRoute: initialroute,
    );
  }
}
