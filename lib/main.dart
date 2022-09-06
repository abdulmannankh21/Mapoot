import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapoot/Screens/splashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

final ValueNotifier<bool> toggleTheme = ValueNotifier(false);

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeData _darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff18181A),
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: Colors.white),
    primaryColor: Color(0xff18181A),
    textTheme: TextTheme(
      button: TextStyle(
        color: Colors.white,
      ),
      headline1: GoogleFonts.poppins(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headline2: GoogleFonts.poppins(
        fontSize: 13,
        color: Colors.white,
      ),
      headline3: GoogleFonts.poppins(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w800,
      ),
      headline4: GoogleFonts.poppins(
        fontSize: 15,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    ),
  );

  final ThemeData _lightTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xffF4F1E9),
      brightness: Brightness.light,
      primaryColor: Color(0xffF4F1E9),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        button: TextStyle(
          color: Colors.white,
        ),
        headline1: GoogleFonts.poppins(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        headline2: GoogleFonts.poppins(
          fontSize: 13,
          color: Colors.black87,
        ),
        headline3: GoogleFonts.poppins(
          fontSize: 20,
          color: Colors.black87,
          fontWeight: FontWeight.w800,
        ),
        headline4: GoogleFonts.poppins(
          fontSize: 15,
          color: Colors.black87,
          fontWeight: FontWeight.w700,
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: toggleTheme,
      builder: (BuildContext context, bool value, Widget? child) {
        print(value.toString());
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: _lightTheme,
          darkTheme: _darkTheme,
          themeMode: value ? ThemeMode.dark : ThemeMode.light,
          home: const Splash(),
        );
      },
    );
  }
}
