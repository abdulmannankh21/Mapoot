import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapoot/main.dart';

class favoriteScreen extends StatefulWidget {
  const favoriteScreen({Key? key}) : super(key: key);

  @override
  _favoriteScreenState createState() => _favoriteScreenState();
}

class _favoriteScreenState extends State<favoriteScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(170),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              leading: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              actions: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/Ellipse 23.png'),
                ),
              ],
              bottom: PreferredSize(child: Row(
                children: [
                  Text(
                    "Favourite",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ), preferredSize: size),
            ),
          ),
        ),
        body: SingleChildScrollView
          (child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            children: [
              Container(
                height: size.height,
                width: size.width,
                child: ListView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  physics: const PageScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all( 8.0),
                      child: Container(

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
                                height: 100,
                                width: 100,
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
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                              ),
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
                                      Icon(
                                        Icons.favorite,
                                        size: 25,
                                        color: Colors.red,
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
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 18,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        "4.3",
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Text("\$300",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          )),
                                      SizedBox(
                                        width: MediaQuery.of(context)
                                            .size
                                            .width /
                                            3.9,
                                      ),
                                      Text(
                                        "10 Km away",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Color(0xFF707070)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
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
