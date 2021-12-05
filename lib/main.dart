import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'red_pill_screen.dart';
import 'blue_pill_screen.dart';

import 'components/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Constants.matrixGreenColor,
      theme: ThemeData(
        textTheme: GoogleFonts.pressStart2pTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'NYE',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _color;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    _color = ColorTween(begin: Constants.matrixGreenColor, end: Colors.white)
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Welcome to Street NYE',
          style: TextStyle(fontSize: 16.0),
        ),
        backgroundColor: Constants.matrixGreenColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 1000,
              child: AnimatedBuilder(
                animation: _color,
                builder: (BuildContext _, Widget? __) {
                  return Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                        child: Opacity(
                            opacity: 1,
                            child: Image.asset(
                              'assets/images/matrix_gif.gif',
                              semanticLabel: 'Binary Matrix rain',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            )),
                      ),
                      AnimatedDefaultTextStyle(
                        duration: const Duration(milliseconds: 200),
                        style:
                            const TextStyle(fontSize: 70.0, letterSpacing: 8.0),
                        child: Container(
                          margin: const EdgeInsets.all(20.0),
                          child: Text(
                            'Do you dare to enter the Matrix?',
                            style: GoogleFonts.pressStart2p(
                                color: _color.value, fontSize: 20.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RedPillScreen()));
                  },
                  child: Image.asset(
                    'assets/images/morepheus_with_red_pill.jpeg',
                    height: 400,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BluePillScreen()));
                  },
                  child: Image.asset(
                    'assets/images/morepheus_with_blue_pill.jpeg',
                    height: 400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
