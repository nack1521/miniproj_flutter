import 'package:flutter/material.dart';
import 'package:final_proj/_nextPageTwo.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  final TextEditingController _value1Controller = TextEditingController();
  final TextEditingController _value2Controller = TextEditingController();
  String? _message;
  String? _selected;

  @override
  void dispose() {
    _value1Controller.dispose();
    _value2Controller.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _message = "0.00";
  }

  void _calUpdate() {
    setState(() {
      final double value1 = double.parse(_value1Controller.text);
      final double value2 = double.parse(_value2Controller.text);

      double result = 0.0;

      if (_selected == "Addition") {
        result = value1 + value2;
      } else if (_selected == "Subtraction") {
        result = value1 - value2;
      } else if (_selected == "Multiplication") {
        result = value1 * value2;
      } else if (_selected == "Division") {
        if (value2 != 0) {
          result = value1 / value2;
        } else {
          _message = "Error: Division by zero";
          return;
        }
      }

      _message = result.toStringAsFixed(2);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      backgroundColor: Color.fromARGB(255, 214, 216, 193),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '$_message',
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _value1Controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.numbers),
                labelText: 'Enter first number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _value2Controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.numbers),
                labelText: 'Enter second number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selected = 'Addition';
                        _calUpdate();
                      });
                    },
                    child: Text('Addition')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selected = 'Subtraction';
                        _calUpdate();
                      });
                    },
                    child: Text('Subtraction')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selected = 'Multiplication';
                        _calUpdate();
                      });
                    },
                    child: Text('Multiplication')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selected = 'Division';
                        _calUpdate();
                      });
                    },
                    child: Text(
                      'Division',
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NextPageTwo(
                                value1: double.parse(_value1Controller.text),
                                value2: double.parse(_value2Controller.text),
                              )));
                },
                icon: Icon(Icons.calculate),
                label: Text(
                  'Show all result in next page',
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 51, 51, 51)),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 174, 219, 255)),
                  minimumSize: MaterialStateProperty.all(Size(200, 45)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
