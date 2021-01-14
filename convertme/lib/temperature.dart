import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  @override
  _Temperature createState() => new _Temperature();
}

class _Temperature extends State<Temperature> {
  double input;
  double output;
  bool temp;

  void initState() {
    super.initState();
    input = 0.0;
    output = 0.0;
    temp = true;
  }

  @override
  Widget build(BuildContext context) {
    Container tempSwitch = Container(
      margin: EdgeInsets.fromLTRB(90.0, 10.0, 10.0, 10.0),
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Text("F",
                  style: TextStyle(
                    fontFamily: 'fantasy',
                    fontStyle: FontStyle.normal,
                    fontSize: 50,
                  )),
            ),
          ),
          Radio<bool>(
              groupValue: temp,
              value: false,
              onChanged: (v) {
                setState(() {
                  temp = v;
                });
              }),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50),
              child: Text("C",
                  style: TextStyle(
                    fontFamily: 'fantasy',
                    fontStyle: FontStyle.normal,
                    fontSize: 50,
                  )),
            ),
          ),
          Radio<bool>(
              groupValue: temp,
              value: true,
              onChanged: (v) {
                setState(() {
                  temp = v;
                });
              }),
        ],
      ),
    );

    TextField inputField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (str) {
        try {
          input = double.parse(str);
        } catch (e) {
          input = 0.0;
        }
      },
      decoration: InputDecoration(
          hintText: " ",
          filled: true,
          fillColor: Colors.grey[300],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          )),
      textAlign: TextAlign.center,
    );

    Container tempBtn = Container(
      margin: EdgeInsets.fromLTRB(5.0, 30.0, 5.0, 5.0),
      child: RaisedButton(
        padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text('Convert',
            style: TextStyle(
              fontFamily: 'fantasy',
              fontStyle: FontStyle.italic,
              fontSize: 25,
            )),
        color: Colors.deepPurple[50],
        onPressed: () {
          setState(() {
            temp == false
                ? output = (input - 32) * (5 / 9)
                : output = (input * 9 / 5) + 32;
          });
        },
      ),
    );

    Row result = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Result:',
              style: TextStyle(
                fontFamily: 'fantasy',
                fontStyle: FontStyle.normal,
                fontSize: 30,
              )),
        ),
      ],
    );

    Row display1 = Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: EdgeInsets.all(20),
        child: Text("Fahrenheit: ${input.toStringAsFixed(2)}",
            style: TextStyle(
              fontFamily: 'fantasy',
              fontStyle: FontStyle.italic,
              fontSize: 30,
            )),
      ),
    ]);

    Row display2 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text("Celsius: ${output.toStringAsFixed(2)}",
              style: TextStyle(
                fontFamily: 'fantasy',
                fontStyle: FontStyle.italic,
                fontSize: 30,
              )),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            tempSwitch,
            inputField,
            tempBtn,
            result,
            display1,
            display2,
          ],
        ),
      ),
    );
  }
}
