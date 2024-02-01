import 'package:flutter/material.dart';
import 'package:flutter_appbasic/myconstants/myconstants.dart';

class Createaccunt extends StatefulWidget {
  const Createaccunt({super.key});

  @override
  State<Createaccunt> createState() => _CreateaccuntState();
}

class _CreateaccuntState extends State<Createaccunt> {
  late double width;
  late double height;
  late double fontsize;
  TextEditingController valus = TextEditingController();
  String? gendered;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      //backgroundColor: Color(Myconstants().light),
      appBar: AppBar(
        backgroundColor: Color(Myconstants().dark),
        title: const Center(
          child: Text("Createaccunt",
              style: TextStyle(
                color: Colors.blue,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              )),
        ),
      ),
      body: Container(
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
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Buildusername(),
                  SizedBox(height: 15, width:20.0,child:Container()),
                  Buildpassword(),
                  const SizedBox(height: 15),
                  BuildPhone(),
                  const SizedBox(height: 15),
                  Buildaddress(),
                  const SizedBox(height: 15),
                  Buildgender(),
                  const SizedBox(height: 20),
                  buttoncreateaccont(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget Buildgender() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Gender:",
            style: TextStyle(
              color: Color(Myconstants().red),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            width: 25.0,
          ),
          Radio(
            value: 'Male',
            groupValue: gendered,
            onChanged: (String? value) {
              setState(() {
                gendered = value;
              });
            },
            fillColor: MaterialStatePropertyAll(Color(Myconstants().red)),
          ),
          Text(
            'Male',
            style: TextStyle(
              color: Color(Myconstants().red),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            width: 25.0,
          ),
          Radio(
            value: 'Female',
            groupValue: gendered,
            onChanged: (String? value) {
              setState(() {
                gendered = value;
              });
            },
            fillColor: MaterialStatePropertyAll(Color(Myconstants().red)),
          ),
          Text(
            'Female',
            style: TextStyle(
              color: Color(Myconstants().red),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Buildusername() {
    return TextFormField(
      style: const TextStyle(
        height: 1.0,
        color: Colors.black,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
          labelText: 'Username:',
          labelStyle: TextStyle(
            color: Color(Myconstants().red),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Color(Myconstants().red),
            size: 35,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(
                Myconstants().red,
              ),
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(
                Myconstants().red,
              ),
              width: 1.5,
            ),
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
    );
  }

  // ignore: non_constant_identifier_names
  Widget Buildpassword() {
    return TextFormField(
      style: const TextStyle(
        height: 1.0,
        color: Colors.black,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
          labelText: 'Password:',
          labelStyle: TextStyle(
            color: Color(Myconstants().red),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Color(Myconstants().red),
            size: 35,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(
                Myconstants().red,
              ),
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(
                Myconstants().red,
              ),
              width: 1.5,
            ),
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
    );
  }

  Widget BuildPhone() {
    return TextFormField(
      style: const TextStyle(
        height: 1.0,
        color: Colors.black,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
          labelText: 'Phone:',
          labelStyle: TextStyle(
            color: Color(Myconstants().red),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          prefixIcon: Icon(
            Icons.phone_android,
            color: Color(Myconstants().red),
            size: 35,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(
                Myconstants().red,
              ),
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(
                Myconstants().red,
              ),
              width: 1.5,
            ),
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
    );
  }

  Widget Buildaddress() {
    return TextFormField(
      maxLines: 3,
      style: const TextStyle(
        height: 1.0,
        color: Colors.black,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
          labelText: 'Address:',
          labelStyle: TextStyle(
            color: Color(Myconstants().red),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          prefixIcon: Icon(
            Icons.home,
            color: Color(Myconstants().red),
            size: 35,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(
                Myconstants().red,
              ),
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Color(
                Myconstants().red,
              ),
              width: 1.5,
            ),
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
    );
  }

  Widget buttoncreateaccont() {
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
          'Create',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'fonts/Roboto-Bold.ttf',
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
