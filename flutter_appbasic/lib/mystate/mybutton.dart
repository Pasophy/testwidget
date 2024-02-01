import 'package:flutter/material.dart';
import 'package:flutter_appbasic/myconstants/myconstants.dart';
import 'package:flutter_appbasic/mystate/createaccunt.dart';
import 'package:flutter_appbasic/mystyle/mystyle.dart';

class Mybuttom extends StatefulWidget {
  const Mybuttom({super.key});

  @override
  State<Mybuttom> createState() => _MybuttomState();
}

class _MybuttomState extends State<Mybuttom> {
  late double height;
  late double width;
  TextButton btncreataccount() => TextButton(
        onPressed: () =>
            Navigator.pushNamed(context, Myconstants().createaccount),
        child: const Text('Create Account',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            )),
      );

  Widget showlogo() {
    return Container(
      width: 300.0,
      height: 300.0,
      child: Image.asset('images/logos.png'),
    );
  }

  Widget showApp() {
    return Text(
      'PHY SHOPPING MALL',
      style: TextStyle(
        fontSize: 20.0,
        color: Color(Myconstants().dark),
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'Pacifico',
      ),
    );
  }

  Widget signinbutton() {
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white70,
        foregroundColor: Colors.red,
        side: const BorderSide(
          width: 1.0,
          color: Colors.red,
          strokeAlign: 0.2,
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Signin',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Pacifico',
          fontSize: 25.0,
        ),
      ),
    );
  }

  Widget signupbutton() {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(Myconstants().light),
          foregroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          side: BorderSide(
            width: 2.0,
            color: Color(Myconstants().dark),
            strokeAlign: 0.5,
          ),
        ),
        onPressed: () {
          MaterialPageRoute materialPageRoute = MaterialPageRoute(
            builder: (BuildContext context) => const Createaccunt(),
          );
          Navigator.of(context).push(materialPageRoute);
        },
        child: Mystyle().Subtitle1('Signing'),
      ),
    );
  }

  Widget showbuttom() {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          signinbutton(),
          signupbutton(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      floatingActionButton: btncreataccount(),
      backgroundColor: Color(Myconstants().dark),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: <Color>[
                Colors.white,
                const Color.fromARGB(255, 234, 227, 227),
                Color(Myconstants().light)
              ],
              radius: 1.0,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showlogo(),
                showApp(),
                showbuttom(),
                TextButton(onPressed: () {}, child: Text('Click1')),
                ElevatedButton(onPressed: () {}, child: Text('Click2')),
                OutlinedButton(onPressed: () {}, child: Text('Click3'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
