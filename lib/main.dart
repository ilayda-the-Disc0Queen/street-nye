import 'package:flutter/material.dart';
import 'package:street_nye/components/banner_image.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Street NYE',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             BannerImage(
//                 imagePath: 'assets/images/matrix_gif.gif',
//                 altText: 'matrix characters',
//                 overImageText: 'Do you dare to enter the Matrix?'),
//             // FittedBox(
//             //   child: Image.asset('assets/images/matrix.gif'),
//             //   fit: BoxFit.fill,
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

//FittedBox(
//           child: Image.asset('assets/images/matrix_gif.gif'),
//           fit: BoxFit.fill,
//         )
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
      duration: Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    _color =
        ColorTween(begin: Colors.green, end: Colors.white).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Street NYE'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: AnimatedBuilder(
          animation: _color,
          builder: (BuildContext _, Widget? __) {
            // return Container(
            //   width: 300,
            //   height: 300,
            //   decoration:
            //       BoxDecoration(color: _color.value, shape: BoxShape.circle),
            // );
            return Center(
              child: Stack(
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
                        )),
                  ),
                  Center(
                    // child: Text(
                    //   'Do you want to yes',
                    //   style: TextStyle(
                    //     color: _color,
                    //   ),
                    // ),
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 200),
                      // style: isSelected
                      //     ? const TextStyle(color: Colors.green)
                      //     : const TextStyle(color: Colors.white),
                      style: const TextStyle(fontSize: 40.0),
                      child: Text(
                        'Do you dare to enter the Matrix?',
                        style: TextStyle(color: _color.value),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
