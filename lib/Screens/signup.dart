import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapoot/Class/login_signup.dart';
import 'package:mapoot/Screens/login.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  register() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    String fullname = _fullNameController.text;
    String email = _emailController.text;
    int phoneNumber = _phoneNumberController.text as int;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;
  try{
    final UserCredential user = await auth.createUserWithEmailAndPassword(email: email, password: password);
    await firestore.collection( 'User').doc(user.user!.uid).set({'email':email,'name':fullname,'phone':phoneNumber});
  }
  catch(e){
  print (e);
  }
  }

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
                LoginorSignupWidget('SignUp', 'SignUp'),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Full Name',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextField(
                  controller: _fullNameController,
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
                      hintText: "Enter Your Name",
                      contentPadding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 8),
                      fillColor: Theme.of(context).backgroundColor),
                ),
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
                  controller: _emailController,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: Colors.grey,
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
                      hintText: "Enter Your Email",
                      contentPadding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 8),
                      fillColor: Theme.of(context).backgroundColor),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Phone Number',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextField(
                  controller: _phoneNumberController,
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
                      hintText: "Enter Your Phone Number",
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
                  controller: _passwordController,
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
                      hintText: "Enter Your Password",
                      contentPadding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 8),
                      fillColor: Theme.of(context).backgroundColor),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Confirm Password',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextField(
                  controller: _confirmPasswordController,
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
                      hintText: "Confirm Password",
                      contentPadding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 8),
                      fillColor: Theme.of(context).backgroundColor),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFEB3326)),
                      height: 50,
                      width: MediaQuery.of(context).size.width * double.infinity,
                      child: Center(
                        child: InkWell(
                          onTap: () async {
                            print('press');
                            await register();
                          },
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
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
                            text: 'Already have an account?',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          TextSpan(
                            text: '  Login',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => LoginScreen()));
                              },
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ]),
                  ),
                ),

                SizedBox(
                  height: size.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
