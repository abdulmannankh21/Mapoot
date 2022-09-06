import 'package:flutter/material.dart';

import '../main.dart';
import 'getStarted.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 5,),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>GetStarted()));
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
       child: toggleTheme.value?Image.asset('assets/dark/Logo.png',width: 240,):Image.asset('assets/images/MaroonLogo.png',width: 240,),
      ),
    );
  }
}
