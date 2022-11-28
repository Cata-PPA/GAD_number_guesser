import 'package:flutter/material.dart';

void main() {
  runApp(const NumberGuesser());
}

class NumberGuesser extends StatelessWidget {
  const NumberGuesser({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess my number',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Guess my number'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  num numberToBeChecked = 0;
  num number = 0;
  num numberToPower2 = 0;
  num numberToPower3 = 0;
  num numberToSquare = 0;
  num numberToCube = 0;
  String value = 'this';
  String guessResultText = '';
  final String textForSquare = 'Your number is a square';
  final String textForCube = 'Your number is a cube';
  String textReplacer = 'x';

  void checkSqrtCube() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'I' '${"'"}' 'm thinking of a number between 1 and 100.',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'It' '${"'"}' 's your turn to guess my number',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                guessResultText,
                style: const TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
            ),
            AlertDialog(
              title: const Text(
                'Try a number!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              actions: <Widget>[
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Make a guess',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (String value) {
                    setState(() {
                      numberToBeChecked = double.tryParse(value)!;
                    });
                  },
                ),
                Center(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () {
                      guessResultText = 'heyeyeyeyeyeyeyeyeyeyheyeyeyeyeyeyeyeyeyeyheyeyeyeyeyeyeyeyeyey';
                    },
                    child: const Text(
                      'Guess',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
