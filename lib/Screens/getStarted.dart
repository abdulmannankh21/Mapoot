import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapoot/Screens/login.dart';

import '../main.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(
                  height: 60,
                ),

                Container(
                  width: 150,
                  height: 80,
                  child:toggleTheme.value?Image(image: AssetImage('assets/dark/Logo.png')) :Image(image: AssetImage('assets/images/MaroonLogo.png')),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: 150,
                  height: 170,
                  child: Image(image: AssetImage('assets/images/MaskGroup2.png')),
                ),
                SizedBox(
                  height: 50,
                ),
                toggleTheme.value?
                Text(
                  'Explore the world nearby',
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                ):
                Text(
                  'Explore the world nearby',
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                  ),
                ),
                toggleTheme.value?
                Text(
                  'Choose the products or services being'
                      'offered around you.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white

                  ),
                ):
                Text(
                  'Choose the products or services being'
                      'offered around you.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black

                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));

                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFEB3326)),
                      height: 50,
                      width: MediaQuery.of(context).size.width * double.infinity,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            'Get Started',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                          Positioned(
                            right: 16,
                            child: Image(
                              image: AssetImage(
                                'assets/images/right-arrow.png',
                              ),
                              height: 25,
                              width: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child:
                  toggleTheme.value?
                  Text(
                    'Continue As a Guest',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ):
                  Text(
                    'Continue As a Guest',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
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
