import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  double results = 0;
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();

  void convert() {
    setState(() {
      results = double.parse(weight.text) /
          (double.parse(height.text) / 100 * double.parse(height.text) / 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Height in Cm :',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            TextField(
              controller: height,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Your Height in Cm :',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              'Your Weight in kg :',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            TextField(
              controller: weight,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Your Weight in kg :',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),
            // button
            TextButton(
              onPressed: () {
                convert();
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              child: const Text("Calculate"),
            ),

            const SizedBox(
              height: 50.0,
            ),
            Text(
              'Your BMI is :${results.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
