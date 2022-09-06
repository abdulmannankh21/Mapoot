import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../main.dart';

class postAd extends StatefulWidget {
  const postAd({Key? key}) : super(key: key);

  @override
  _postAdState createState() => _postAdState();
}

class _postAdState extends State<postAd> with TickerProviderStateMixin {
  late PageController pageController;
  late TabController tabController;

  int _index = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0, keepPage: false);
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isChecked1 = false;
    bool isChecked2= false;
    bool isChecked3= false;
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
              bottom: PreferredSize(
                preferredSize: Size(size.width, 70),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Post Ad",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      ),
                      TabBar(
                          physics: NeverScrollableScrollPhysics(),
                          controller: tabController,
                          indicator: BoxDecoration(color: Colors.transparent),
                          isScrollable: true,
                          onTap: (index) {
                            setState(() {
                              _index = index;
                              pageController.animateToPage(_index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            });
                          },
                          tabs: [
                            Tab(
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: _index == 0
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .color
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: toggleTheme.value
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 18),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Overview",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .merge(TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: _index == 0
                                              ? Theme.of(context)
                                                  .textTheme
                                                  .headline3!
                                                  .color
                                              : Colors.grey,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      color: _index == 0
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .color
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: _index == 1
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .color
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "2",
                                      style: TextStyle(
                                          color: toggleTheme.value
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 18),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Ad Images",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .merge(TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: _index == 1
                                              ? Theme.of(context)
                                                  .textTheme
                                                  .headline3!
                                                  .color
                                              : Colors.grey,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      color: _index == 1
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .color
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: _index == 2
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .color
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "3",
                                      style: TextStyle(
                                          color: toggleTheme.value
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 18),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Location",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .merge(TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: _index == 2
                                              ? Theme.of(context)
                                                  .textTheme
                                                  .headline3!
                                                  .color
                                              : Colors.grey,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      color: _index == 2
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .color
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: _index == 3
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .color
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "4",
                                      style: TextStyle(
                                          color: toggleTheme.value
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 18),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Contact Info",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .merge(TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: _index == 3
                                              ? Theme.of(context)
                                                  .textTheme
                                                  .headline3!
                                                  .color
                                              : Colors.grey,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      color: _index == 3
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .color
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              _index = index;
              tabController.index = _index;
            });
          },
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
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
                          hintText: "Enter Your Name",
                          contentPadding:
                              EdgeInsets.only(top: 15, bottom: 15, left: 8),
                          fillColor: Theme.of(context).backgroundColor),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Description',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      maxLines: 8,
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
                          hintText: "Description",
                          contentPadding:
                              EdgeInsets.only(top: 15, bottom: 15, left: 8),
                          fillColor: Theme.of(context).backgroundColor),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Category',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Theme.of(context).backgroundColor,
                        ),
                      ),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          iconColor: Theme.of(context).iconTheme.color,
                          title: Text(
                            "Category",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          children: [
                            ListTile(
                              leading: Icon(Icons.motorcycle_rounded),
                              title: Text(
                                "Cancel",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.motorcycle_rounded),
                              title: Text(
                                "For Sale",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                leading: Icon(
                                  Icons.home_outlined,
                                  color: Colors.black45,
                                ),
                                title: Text(
                                  "Property",
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: ListTile(
                                      leading: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.circle,
                                          size: 12,
                                        ),
                                      ),
                                      title: Text(
                                        "Rent",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: ListTile(
                                      leading: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.circle,
                                          size: 12,
                                        ),
                                      ),
                                      title: Text(
                                        "Buy",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.card_travel),
                              title: Text(
                                "Jobs",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.card_travel),
                              title: Text(
                                "Services",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.card_travel),
                              title: Text(
                                "Community",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.card_travel),
                              title: Text(
                                "Pets",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Search Tags',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
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
                          hintText: "Search tags",
                          contentPadding:
                              EdgeInsets.only(top: 15, bottom: 15, left: 8),
                          fillColor: Theme.of(context).backgroundColor),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      children: [
                        Chip(
                          backgroundColor: Color(0xFF48484A),
                          label: Text("BMW"),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          deleteIconColor: Colors.white,
                          deleteIcon: Icon(Icons.clear),
                          onDeleted: () {},
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Chip(
                          backgroundColor: Color(0xFF48484A),
                          label: Text("Cars"),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          deleteIconColor: Colors.white,
                          deleteIcon: Icon(Icons.clear),
                          onDeleted: () {},
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey)),
                              height: 50,
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: Center(
                                child: Text(
                                  'Cancel',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: toggleTheme.value
                                        ? Colors.white
                                        : Color(0xFF48484A),
                                  ),
                                ),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFEB3326)),
                              height: 50,
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: Center(
                                child: Text(
                                  'Continue',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Cover Photo',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          'This is the main image to be displayed inside the app. Make sure it should be awesome.',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: toggleTheme.value
                                  ? Color(0xFFF4F1E9)
                                  : Color(0xFF000000)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: toggleTheme.value
                                  ? Color(0xFF48484A)
                                  : Colors.white),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  width: 54,
                                  height: 54,
                                  image:
                                      AssetImage('assets/images/imageicon.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Click to add a cover photo',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Additional Photos',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add additional photos to your ads to increase your conversion.',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: toggleTheme.value
                                  ? Color(0xFFF4F1E9)
                                  : Color(0xFF000000)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 125,
                          height: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: toggleTheme.value
                                ? Color(0xFF48484A)
                                : Colors.white,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Icon(Icons.add, size: 80)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Add multiple photos from gallery',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: toggleTheme.value
                                    ? Color(0xFFF4F1E9)
                                    : Color(0xFF000000)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Center(
                              child: Text(
                                'Cancel',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: toggleTheme.value
                                      ? Colors.white
                                      : Color(0xFF48484A),
                                ),
                              ),
                            )),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEB3326)),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Center(
                              child: Text(
                                'Continue',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.all(
                            toggleTheme.value
                                ? Color(0xFF48484A)
                                : Color(0xFF18181A),
                          ),
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked1 = value!;
                            });
                          }),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Use Phone Number',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: Text(
                              'Your phone number will be used to contact you',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: toggleTheme.value
                                      ? Color(0xFFF4F1E9)
                                      : Color(0xFF000000)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.all(
                            toggleTheme.value
                                ? Color(0xFF48484A)
                                : Color(0xFF18181A),
                          ),
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked2 = value!;
                            });
                          }),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Use Email Address',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: Text(
                              'Your registered email will be used to contact you.',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: toggleTheme.value
                                      ? Color(0xFFF4F1E9)
                                      : Color(0xFF000000)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.all(
                            toggleTheme.value
                                ? Color(0xFF48484A)
                                : Color(0xFF18181A),
                          ),
                          value: isChecked3,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked3 = value!;
                            });
                          }),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Live Chat',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: Text(
                              'Your registered email will be used to contact you.',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: toggleTheme.value
                                      ? Color(0xFFF4F1E9)
                                      : Color(0xFF000000)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Center(
                              child: Text(
                                'Cancel',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: toggleTheme.value
                                      ? Colors.white
                                      : Color(0xFF48484A),
                                ),
                              ),
                            )),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEB3326)),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Center(
                              child: Text(
                                'Continue',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RoundCheckBox(
                        borderColor: toggleTheme.value? Color(0xFFF4F1E9) : Color(0xFF707070),
                        size: 25,
                        checkedColor:
                        toggleTheme.value ? Color(0xFF48484A) : Color(0xFF18181A),
                        onTap: (selected) {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Post Ad from home',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: Text(
                              'You can post an ad from your hometown if you are away from your home',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: toggleTheme.value
                                      ? Color(0xFFF4F1E9)
                                      : Color(0xFF000000)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RoundCheckBox(
                        borderColor: toggleTheme.value? Color(0xFFF4F1E9) : Color(0xFF707070),
                        size: 25,
                        checkedColor:
                        toggleTheme.value ? Color(0xFF48484A) : Color(0xFF18181A),
                        onTap: (selected) {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Post Ad from current location',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: Text(
                              'You can post your Ad from your current location.',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: toggleTheme.value
                                      ? Color(0xFFF4F1E9)
                                      : Color(0xFF000000)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Center(
                              child: Text(
                                'Cancel',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: toggleTheme.value
                                      ? Colors.white
                                      : Color(0xFF48484A),
                                ),
                              ),
                            )),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEB3326)),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Center(
                              child: Text(
                                'Continue',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
