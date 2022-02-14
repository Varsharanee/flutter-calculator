import 'package:flutter/material.dart';

const headingText =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.teal);
const iconText =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      num1 = 0;
      num2 = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculator App'),
          centerTitle: true,
          toolbarHeight: 60,
          elevation: 16,
          shadowColor: Colors.teal,
          backgroundColor: Colors.teal.shade300,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40),
            Text("Input", style: headingText),
            Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: TextField(
                    controller: t1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter 1st number"))),
            Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: TextField(
                    controller: t2,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter 2nd number"))),
            SizedBox(height: 25),
            Text("Output: $sum", style: headingText),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    addition();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade200,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                          left: 40, right: 40, top: 20, bottom: 20),
                      side: BorderSide(width: 4, color: Colors.teal.shade400)),
                  child: Text("+", style: iconText),
                ),
                ElevatedButton(
                  onPressed: () {
                    subtraction();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade200,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                          left: 40, right: 40, top: 20, bottom: 20),
                      side: BorderSide(width: 4, color: Colors.teal.shade400)),
                  child: Text("-", style: iconText),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonTheme(
                    minWidth: 100,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        multiplication();
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal.shade200,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.only(
                              left: 40, right: 40, top: 20, bottom: 20),
                          side: BorderSide(
                              width: 4, color: Colors.teal.shade400)),
                      child: Text("*", style: iconText),
                    )),
                ElevatedButton(
                  onPressed: () {
                    division();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade200,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                          left: 40, right: 40, top: 20, bottom: 20),
                      side: BorderSide(width: 4, color: Colors.teal.shade400)),
                  child: Text("/", style: iconText),
                )
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                doClear();
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.teal.shade200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                  side: BorderSide(width: 4, color: Colors.teal.shade400)),
              child: Text("Clear", style: iconText),
            )
          ],
        )));
  }
}
