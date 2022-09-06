import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart' as latlng;
import 'package:mapoot/Screens/favorite.dart';
import 'package:mapoot/Screens/postad.dart';
import 'package:mapoot/main.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool replace = true;
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: globalKey,
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/Ellipse 23.png'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text("Guest",
                              style: Theme.of(context).textTheme.headline4),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Laoshe Maoshe",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.home,
                            color: Colors.grey,
                          ),
                          title: Text("Home",
                              style: Theme.of(context).textTheme.headline4),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => postAd()),);
                        },
                        child: ListTile(
                          leading: Image.asset(
                            "assets/icon/ad.png",
                            color: Theme.of(context).iconTheme.color,
                            width: 25,
                          ),
                          title: Text("Post Ad",
                              style: Theme.of(context).textTheme.headline4),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                          "assets/icon/category.png",
                          color: Theme.of(context).iconTheme.color,
                          width: 25,
                        ),
                        title: Text("Category",
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      ListTile(
                        leading: Image.asset(
                          "assets/icon/chat.png",
                          color: Theme.of(context).iconTheme.color,
                          width: 25,
                        ),
                        title: Text("Chat",
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => favoriteScreen()),);
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          ),
                          title: Text("Favorites",
                              style: Theme.of(context).textTheme.headline4),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                          "assets/icon/list.png",
                          color: Theme.of(context).iconTheme.color,
                          width: 25,
                        ),
                        title: Text("My Listings",
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      ListTile(
                        leading: Image.asset(
                          "assets/icon/list.png",
                          color: Theme.of(context).iconTheme.color,
                          width: 25,
                        ),
                        title: Text("Shopping lists",
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.local_offer,
                          color: Colors.grey,
                        ),
                        title: Text("Deals",
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                        title: Text("Setting",
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.login,
                          color: Colors.grey,
                        ),
                        title: Text("Logout",
                            style: Theme.of(context).textTheme.headline4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                center: latlng.LatLng(31.5204, 74.3587),
                zoom: 14.0,
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate:
                      "https://api.mapbox.com/styles/v1/hamza34346/ckvteiz4x1xnd15rwikhz0tpz/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiaGFtemEzNDM0NiIsImEiOiJja3Z0ZGU0cXQxOXZwMzFxcGpwbnRvdTc5In0.FMZ5AhAocUN0Abok7yiBog",
                  additionalOptions: {
                    'accessToken':
                        'pk.eyJ1IjoiaGFtemEzNDM0NiIsImEiOiJja3Z0ZGU0cXQxOXZwMzFxcGpwbnRvdTc5In0.FMZ5AhAocUN0Abok7yiBog',
                    'id': 'mapbox.mapbox-streets-v8'
                  },
                  attributionBuilder: (_) {
                    return Text("");
                  },
                ),
                /*MarkerLayerOptions(
  markers: [
    Marker(
      width: 80.0,
      height: 80.0,
      point: LatLng(51.5, -0.09),
      builder: (ctx) =>
          Container(
            child: FlutterLogo(),
          ),
    ),
  ],
),*/
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      if (globalKey.currentState!.isDrawerOpen) {
                        Navigator.of(context).pop();
                        return;
                      }
                      globalKey.currentState!.openDrawer();
                    },
                    child: Material(
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
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/Ellipse 23.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).scaffoldBackgroundColor,
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
            ),
            replace
                ? Positioned(
                    left: 50,
                    right: 50,
                    bottom: 10,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          replace = !replace;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFEB3326)),
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Center(
                            child: Text(
                              'Accept Location',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          )),
                    ),
                  )
                : Positioned(
                    bottom: 10,
                    left: 5,
                    child: Container(
                      height: size.height / 6,
                      width: size.width,
                      child: ListView.builder(
                        itemCount: 12,
                        shrinkWrap: true,
                        physics: const PageScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
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
                                                  6.5,
                                            ),
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
                  ),
          ],
        ),
      ),
    );
  }
}
