import 'package:flutter/material.dart';
import 'package:mapoot/main.dart';

class LoginorSignupWidget extends StatelessWidget {
  String text1;
  String text2;

  LoginorSignupWidget(
      this.text1,
      this.text2,
      );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  // toggleTheme.value = !toggleTheme.value;
                  // toggleTheme.notifyListeners();
                },
                child: toggleTheme.value
                    ? Image.asset(
                    'assets/dark/Icon ionic-ios-arrow-round-forward-dark.png')
                    : Image.asset(
                    'assets/light/Icon ionic-ios-arrow-round-forward.png')),
            Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  text1,
                  style: Theme.of(context).textTheme.headline3,
                ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            '$text2 with one of the following options',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        SizedBox(
          height: size.height * 0.018,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.4,
                child: toggleTheme.value
                    ? Image.asset(
                  'assets/dark/Group 6446.png',
                  fit: BoxFit.fitWidth,
                )
                    : Image.asset(
                  'assets/light/Group 6446.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: size.width * 0.4,
                child: toggleTheme.value
                    ? Image.asset(
                  'assets/dark/Group 6445.png',
                  fit: BoxFit.cover,
                )
                    : Image.asset(
                  'assets/light/Group 6445.png',
                  fit: BoxFit.cover,

                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.018,
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              'Or',
              style: Theme.of(context).textTheme.subtitle2,
            )),
      ],
    );
  }
}