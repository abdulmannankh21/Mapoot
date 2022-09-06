import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapoot/Class/login_signup.dart';
import 'package:mapoot/Screens/bottomnavigationbar.dart';
import 'package:mapoot/Screens/signup.dart';

import '../api_callback.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginorSignupWidget('Login', 'Login'),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Email',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).backgroundColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).backgroundColor,
                        ),
                      ),
                      filled: true,
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                      hintText: "Enter Your Email",
                      contentPadding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 8),
                      fillColor: Theme.of(context).backgroundColor),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Password',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: Colors.grey,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).backgroundColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).backgroundColor,
                        ),
                      ),
                      filled: true,
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                      hintText: "Enter Your Password",
                      contentPadding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 8),
                      fillColor: Theme.of(context).backgroundColor),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    child: Text(
                      'Forget Password?',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => SignUpScreen()));
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => bottomappbar()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFEB3326)),
                      height: 50,
                      width: MediaQuery.of(context).size.width * double.infinity,
                      child: Center(
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                          ),
                        ),
                      )
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                        text: '',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Dont have an account?',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          TextSpan(
                            text: ' Sign up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // apiCalls();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => SignUpScreen()));
                              },
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ]),
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