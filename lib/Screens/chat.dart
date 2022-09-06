import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapoot/main.dart';

class chatScreen extends StatefulWidget {
  const chatScreen({Key? key}) : super(key: key);

  @override
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/images/infologo.png",
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/Ellipse 23.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Row(
                  children: [
                    Text("Chat",style:  Theme.of(context).textTheme.headline3,),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(15),
                  color:  toggleTheme.value
                      ? Color(0xFF48484A)
                      : Colors.white,
                ),
                child: TextField(
                  //    ...,other fields
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded,
                        color: Theme.of(context).iconTheme.color),
                    hintText: "Search for deals",
                    border: InputBorder.none,
                  ),
                ),
              ),
        Expanded(
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 6),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: toggleTheme.value
                          ? Color(0xFF48484A)
                          : Colors.white,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/Jeep.png"))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Row(

                                children: [
                                  Text("Gucci Shoes",
                                      style: toggleTheme.value
                                          ? GoogleFonts.poppins(
                                        fontSize: 17,
                                        fontWeight:
                                        FontWeight.bold,
                                      )
                                          : GoogleFonts.poppins(
                                        fontSize: 17,
                                        fontWeight:
                                        FontWeight.bold,
                                      )),
                                  SizedBox(
                                    width: MediaQuery.of(context)
                                        .size
                                        .width /
                                        4,
                                  ),

                                  Text(
                                    "7h",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Fifth Avenue, New York, USA",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF707070)),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
            ],
          ),
        ),
      ),
    );
  }
}
