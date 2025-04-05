import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _currentQuote = '';

  final List<String> quotes = [
    'Coding like Poetry should be short and concise',
    'It\'s not a bug: it\'s an undocumented feature',
    'First, solve the problem. Then write the code',
    'Fix the cause, not the symptom',
    'Software development is a journey. Every bug fixed is a lesson learned',
    'Quality is not an act, it is a habit',
    'It’s harder to read code than to write it',
  ];

  void _pickTheQuote() {
    final random = Random();
    setState(() {
      _currentQuote = quotes[random.nextInt(quotes.length)];
    });
  }

  @override
  void initState() {
    super.initState();
    _pickTheQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quotes',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _currentQuote,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 35),
                ElevatedButton(
                  onPressed: _pickTheQuote,
                  child: const Text(
                    'Refresh',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
