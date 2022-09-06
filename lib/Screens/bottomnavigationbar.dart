import 'package:flutter/material.dart';
import 'package:mapoot/Screens/chat.dart';
import 'package:mapoot/Screens/home.dart';
import 'package:mapoot/main.dart';


class bottomappbar extends StatefulWidget {
  const bottomappbar({Key? key}) : super(key: key);

  @override
  _bottomappbarState createState() => _bottomappbarState();
}

class _bottomappbarState extends State<bottomappbar> {
  int currentIndex = 2;
  List mainlist = [
    chatScreen(),
    Container(color: Colors.red),
    homeScreen(),
    Container(color: Colors.yellow),
    Container(color: Colors.orange)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainlist [currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        currentIndex: currentIndex,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Material(borderRadius:BorderRadius.circular(40),
              elevation: 5,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(40),
                ),
                child:Center(
                  child:   Image.asset(
                  'assets/icon/messege.png',
                    color: Theme.of(context).iconTheme.color,
                )
                ),
              ),
            ),
            icon: Image.asset(
              'assets/icon/messege.png',
              color: Theme.of(context).iconTheme.color,
            ),
            label: "     ",
          ),
          BottomNavigationBarItem(
            activeIcon: Material(borderRadius:BorderRadius.circular(40),
              elevation: 5,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(40),
                ),
                child:Center(
                    child:   Image.asset(
                      'assets/icon/user.png',
                      color: Theme.of(context).iconTheme.color,
                    )
                ),
              ),
            ),
            icon: Image.asset(
              'assets/icon/user.png',
              color: Theme.of(context).iconTheme.color,
            ),
            label: "     ",
          ),
          BottomNavigationBarItem(
            activeIcon: Material(borderRadius:BorderRadius.circular(40),
              elevation: 5,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(40),
                ),
                child:Center(
                    child:   Image.asset(
                      'assets/icon/home.png',
                      color: Theme.of(context).iconTheme.color,
                    )
                ),
              ),
            ),
            icon: Image.asset(
              'assets/icon/home.png',
              color: Theme.of(context).iconTheme.color,
            ),
            label: "     ",
          ),
          BottomNavigationBarItem(
            activeIcon: Material(borderRadius:BorderRadius.circular(40),
              elevation: 5,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(40),
                ),
                child:Center(
                    child:   Image.asset(
                      'assets/icon/notification.png',
                      color: Theme.of(context).iconTheme.color,
                    )
                ),
              ),
            ),
            icon: Image.asset(
              'assets/icon/notification.png',
              color: Theme.of(context).iconTheme.color,
            ),
            label: "     ",
          ),
          BottomNavigationBarItem(
            activeIcon: Material(borderRadius:BorderRadius.circular(40),
              elevation: 5,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(40),
                ),
                child:Center(
                    child:   Image.asset(
                      'assets/icon/announcement.png',
                      color: Theme.of(context).iconTheme.color,
                    )
                ),
              ),
            ),
            icon: Image.asset(
              'assets/icon/announcement.png',
              color: Theme.of(context).iconTheme.color,
            ),
            label: "     ",
          ),


        ],
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,

    );
  }
}
