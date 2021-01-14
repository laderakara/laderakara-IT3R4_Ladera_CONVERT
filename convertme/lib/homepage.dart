import 'package:convertme/temperature.dart';
import 'package:convertme/volume.dart';
import 'package:convertme/weight.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _Homepage createState() => new _Homepage();
}

class _Homepage extends State<Homepage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(30),
            child: Text('Measurement Converter',
                style: TextStyle(
                  fontFamily: 'cursive',
                  fontStyle: FontStyle.normal,
                  fontSize: 60,
                )),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
                color: Colors.deepPurple[50],
                padding: EdgeInsets.all(30),
                child: Text('Temperature',
                    style: TextStyle(
                      fontFamily: 'fantasy',
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                    )),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Temperature()));
                }),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Colors.deepPurple[50],
              padding: EdgeInsets.all(30),
              child: Text('Volume',
                  style: TextStyle(
                    fontFamily: 'fantasy',
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                  )),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Volume()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Colors.deepPurple[50],
              padding: EdgeInsets.all(30),
              child: Text('Weight',
                  style: TextStyle(
                    fontFamily: 'fantasy',
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                  )),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Weight()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
