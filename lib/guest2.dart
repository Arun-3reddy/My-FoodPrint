import 'package:flutter/material.dart';

class GuestLoginPage extends StatefulWidget {
  const GuestLoginPage({super.key});

  @override
  State<GuestLoginPage> createState() => _GuestLoginPageState();
}

class _GuestLoginPageState extends State<GuestLoginPage> {
  final _nameController = TextEditingController();
  double _height = 0.0;
  double _weight = 0.0;
  String _bmiResult = "";

  void _calculateBMI() {
    if (_height > 0 && _weight > 0) {
      double bmi = _weight / (_height * _height);
      setState(() {
        _bmiResult = "Your BMI is: ${bmi.toStringAsFixed(2)}";
        _interpretBMI(bmi);
      });
    } else {
      setState(() {
        _bmiResult = "Please enter both height and weight.";
      });
    }
  }

  void _interpretBMI(double bmi) {
    if (bmi < 18.5) {
      _bmiResult += "\n(Underweight)";
    } else if (bmi < 25.0) {
      _bmiResult += "\n(Normal weight)";
    } else if (bmi < 30.0) {
      _bmiResult += "\n(Overweight)";
    } else {
      _bmiResult += "\n(Obese)";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guest Login - BMI Calculator"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "Enter your name (optional)",
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: TextEditingController(text: _height.toString()),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Height (in meters)",
                ),
                onChanged: (value) {
                  setState(() {
                    _height = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: TextEditingController(text: _weight.toString()),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Weight (in kilograms)",
                ),
                onChanged: (value) {
                  setState(() {
                    _weight = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _calculateBMI,
                child: const Text("Calculate BMI"),
              ),
              const SizedBox(height: 10.0),
              Text(_bmiResult, style: const TextStyle(fontSize: 16.0)),
            ],
          ),
        ),
      ),
    );
  }
}
