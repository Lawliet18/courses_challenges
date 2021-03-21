import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: PageView(children: [
          FirstChellange(),
          SecondChellange(),
          ThirdChellange(),
          Xylophone()
        ])));
  }
}

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache(prefix: 'assets/sounds/');
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () => playSound(1),
            child: Container(),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: () => playSound(2),
            child: Container(),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange)),
            onPressed: () => playSound(3),
            child: Container(),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            onPressed: () => playSound(4),
            child: Container(),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () => playSound(5),
            child: Container(),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple)),
            child: Container(),
            onPressed: () => playSound(6),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink)),
            onPressed: () => playSound(7),
            child: Container(),
          ),
        ),
      ],
    );
  }
}

class ThirdChellange extends StatefulWidget {
  const ThirdChellange({Key key}) : super(key: key);

  @override
  _ThirdChellangeState createState() => _ThirdChellangeState();
}

class _ThirdChellangeState extends State<ThirdChellange> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: changeDiceNumber,
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: changeDiceNumber,
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
            ),
          ),
        ),
      ],
    );
  }

  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}

class SecondChellange extends StatelessWidget {
  const SecondChellange({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/lawliet.jpg',
          ),
          radius: 50,
        ),
        Text(
          "Lawliet",
          style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: "Pacifico"),
        ),
        Text(
          "Flutter Developer",
          style: TextStyle(
              color: Colors.teal[100],
              fontSize: 24,
              letterSpacing: 1,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
          width: 150,
          child: Divider(
            color: Colors.teal.shade100,
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          color: Colors.white,
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.teal,
            ),
            title: Text(
              '098-405-55-85',
              style: TextStyle(fontSize: 20, color: Colors.teal[900]),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          color: Colors.white,
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.teal,
            ),
            title: Text(
              'vaniasaf1311@gmail.com',
              style: TextStyle(fontSize: 20, color: Colors.teal[900]),
            ),
          ),
        ),
      ],
    );
  }
}

class FirstChellange extends StatelessWidget {
  const FirstChellange({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: 100,
          color: Colors.red,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ],
        ),
        Container(
          width: 100,
          color: Colors.blue,
        )
      ],
    );
  }
}
