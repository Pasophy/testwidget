import 'package:flutter/material.dart';
import 'package:flutter_appbasic/myconstants/myconstants.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  late double heights;
  late double widths;

  late double size;
  bool eyes = true;

  @override
  Widget build(BuildContext context) {
    widths = MediaQuery.sizeOf(context).width;
    heights = MediaQuery.sizeOf(context).height;

    size = MediaQuery.of(context).size.height;

    return Scaffold(
      //floatingActionButton: btncreataccount(),
      backgroundColor: Color(Myconstants().dark),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(
            FocusNode(),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: <Color>[
                  Colors.white,
                  Color(Myconstants().light),
                ],
                center: const Alignment(-0.1, -0.3),
                radius: 1.5,
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            showlogo(),
                      
                            showApp(),
                            textfieldusename(),
                            textfieldpassword(),
                            showbuttom(),
                          ],
                        ),
                      ),
                    ),
                    btncreataccount(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget btncreataccount() => Container(
        padding:
            const EdgeInsets.only(left: 100, top: 10, right: 0.0, bottom: 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: <Widget>[
                  Text(
                    "Aready an account?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'fonts/Roboto-Bold.ttf',
                      color: Color(Myconstants().red),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(
                        context, Myconstants().createaccount),
                    child: Text(
                      'SignUp',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'fonts/Roboto-Bold.ttf',
                        color: Color(Myconstants().blue),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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
      'SOPHY SHOPPING',
      style: TextStyle(
        fontSize: 35.0,
        color: Color(Myconstants().red),
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'fonts/Roboto-Bold.ttf',
      ),
    );
  }

  Widget signinbutton() {
    return SizedBox(
      width: 200.0,
      height: 45.0,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(Myconstants().blue),
          foregroundColor: Color(Myconstants().light),
          side: BorderSide(
            width: 1.0,
            color: Color(Myconstants().dark),
            strokeAlign: 0.2,
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'fonts/Roboto-Bold.ttf',
            fontSize: 25.0,
          ),
        ),
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
        ],
      ),
    );
  }

  Widget textfieldpassword() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white54,
      ),
      height: 50.0,
      width: 250.0,
      child: TextField(
        obscureText: eyes,
        decoration: InputDecoration(
          labelText: 'Password:',
          labelStyle: TextStyle(
            height: -0.5,
            color: Color(Myconstants().red),
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(Icons.lock_open, color: Color(Myconstants().red)),
          suffixIcon: IconButton(
            icon: eyes
                ? const Icon(Icons.remove_red_eye)
                : const Icon(Icons.remove_red_eye_outlined),
            onPressed: () {
              setState(() {
                eyes = !eyes;
              });
            },
            color: Color(Myconstants().red),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: Color(Myconstants().red),
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: Color(Myconstants().red),
              width: 1.0,
            ),
          ),
        ),
        style: TextStyle(
          color: Color(Myconstants().red),
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          height: 1.0,
        ),
      ),
    );
  }

  Widget textfieldusename() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white54,
      ),
      height: 50.0,
      width: 250.0,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Usename:',
          labelStyle: TextStyle(
            height: -0.5,
            color: Color(Myconstants().red),
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(
            Icons.perm_identity,
            color: Color(Myconstants().red),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: Color(Myconstants().red),
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: Color(Myconstants().red),
              width: 1.0,
            ),
          ),
        ),
        style: TextStyle(
          color: Color(Myconstants().red),
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          height: 1.0,
        ),
      ),
    );
  }
}
