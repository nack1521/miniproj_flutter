import 'package:flutter/material.dart';

class NextPageTwo extends StatefulWidget {
  final double value1;
  final double value2;

  const NextPageTwo({Key? key, required this.value1, required this.value2})
      : super(key: key);

  @override
  State<NextPageTwo> createState() => _NextPageTwoState();
}

class _NextPageTwoState extends State<NextPageTwo> {
  double resultAddition = 0.0;
  double resultSubtraction = 0.0;
  double resultMultiplication = 0.0;
  double resultDivision = 0.0;
  String divisionErrorMessage = '';

  @override
  void initState() {
    super.initState();
    // Calculate results for all operations
    resultAddition = widget.value1 + widget.value2;
    resultSubtraction = widget.value1 - widget.value2;
    resultMultiplication = widget.value1 * widget.value2;

    if (widget.value2 != 0) {
      resultDivision = widget.value1 / widget.value2;
    } else {
      divisionErrorMessage = 'Error: Division by zero';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Results'),
      ),
      backgroundColor: Color.fromARGB(255, 214, 216, 193),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 310,
          width: 1920,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 252, 255, 216),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'First number',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    widget.value1.toString(),
                    style: TextStyle(fontSize: 40, color: Colors.red),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Second number',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    widget.value2.toString(),
                    style: TextStyle(fontSize: 40, color: Colors.red),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Addition Result: ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '$resultAddition',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Subtraction Result: ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '$resultSubtraction',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Multiplication Result: ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '$resultMultiplication',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ],
                ),
                if (divisionErrorMessage.isNotEmpty)
                  Text(
                    divisionErrorMessage,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  )
                else
                  Row(
                    children: [
                      Text(
                        'Division Result: ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '${resultDivision.toStringAsFixed(2)}',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
