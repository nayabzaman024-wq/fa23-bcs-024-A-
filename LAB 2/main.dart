import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = "0";
  String _input = "";

  void _buttonPressed(String value) {
    setState(() {
      if (value == "C") {
        _input = "";
        _output = "0";
      } else if (value == "=") {
        try {
          _output = _evaluate(_input);
        } catch (e) {
          _output = "Error";
        }
      } else {
        _input += value;
      }
    });
  }

  String _evaluate(String expression) {
    try {
      final result = double.parse(expression);
      return result.toString();
    } catch (_) {
      return "Invalid";
    }
  }

  Widget _buildButton(String text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _buttonPressed(text),
        child: Text(text, style: const TextStyle(fontSize: 24)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),
              child: Text(
                _input.isEmpty ? _output : _input,
                style: const TextStyle(fontSize: 36),
              ),
            ),
          ),
          Row(children: [_buildButton("7"), _buildButton("8"), _buildButton("9"), _buildButton("/")]),
          Row(children: [_buildButton("4"), _buildButton("5"), _buildButton("6"), _buildButton("*")]),
          Row(children: [_buildButton("1"), _buildButton("2"), _buildButton("3"), _buildButton("-")]),
          Row(children: [_buildButton("0"), _buildButton("C"), _buildButton("="), _buildButton("+")]),
        ],
      ),
    );
  }
}
