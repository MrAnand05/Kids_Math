import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids_math/Level1.dart';
import 'package:kids_math/RotateYAxis.dart';
import 'package:kids_math/button.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _controllerScale;
  Animation<double> animation;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(seconds: 5), vsync: this);
    _controllerScale =
        AnimationController(duration: Duration(seconds: 3), vsync: this);        
    animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    scaleAnimation = Tween(begin: 0.5, end: 1.0).animate(_controllerScale);
    _controller.forward();
    _controllerScale.forward();
    if(_controllerScale.status==AnimationStatus.completed)
    {
      _controllerScale.reverse();
    }
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animatedText = RotationYTransition(
        turns: animation,
        child: Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.green.withOpacity(0.7),
          child: Text(
            'KID\'s MATH',
            style: TextStyle(
              fontFamily: 'ModernAntiqua',
              fontSize: 30.0,
            ),
          ),
        ));

    return Scaffold(
      body: Container(
          child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.blue,
          ),
          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'assets/images/KIDS_MATH.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Container(
            //color: Colors.green.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                animatedText,
                SizedBox(height: 30.0,),
                Container(
                  width: 200.0,
                  height: 200.0,
                  child: Opacity(
                    opacity: 0.8,
                                      child: ScaleTransition(
                      scale: scaleAnimation,
                      child: Image.asset(
                        'assets/images/PaavaniPassport.jpg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                button('Level 1 (Age 5)', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LevelOne(),
                      ));
                }),
                button('Level 2 (Age 6)', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LevelOne(),
                      ));
                }),
                button('Level 3 (Age 7)', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LevelOne(),
                      ));
                }),
                SizedBox(height: 30.0,),
              ],
            ),
          ),
        ],
      )),
    );
  }
}