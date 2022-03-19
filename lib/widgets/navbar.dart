import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nav_drawer.dart';

class NavbarDesign extends StatelessWidget {
  bool isTitleCenter = true;
  String titleText = "PracticeNav";
  List actions = ["Home", "About", "Contact Us"];
  NavbarDesign(
      {Key? key, this.isTitleCenter = false, this.titleText = "PlanYourTrip"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: actions.length,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: MainBody(),
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          elevation: 0,
          titleSpacing: 10,
          title: Text(
            titleText,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w800, color: Colors.black),
          ),
          centerTitle: isTitleCenter ? true : false,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.green,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            // using Wrap to display page buttons

            // Container(
            //   margin: const EdgeInsets.all(14.0),
            //   child: Wrap(
            //     spacing: 8.0,
            //     children: <Widget>[
            //       for (var item in actions)
            //         TextButton(
            //             onPressed: () {},
            //             child: Text(
            //               item,
            //               style: GoogleFonts.poppins(
            //                 color: Colors.black38,
            //               ),
            //             )),
            //     ],
            //   ),
            // ),

            //Using Tab to display page buttons
            SizedBox(
              width: 260,
              height: 100,
              child: TabBar(
                  indicatorWeight: 3,
                  indicatorPadding: const EdgeInsets.only(bottom: 5),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.green,
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.normal),
                  labelStyle: TextStyle(fontWeight: FontWeight.w900),
                  labelColor: Colors.black,
                  isScrollable: true,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    for (var item in actions)
                      Tab(
                        text: item,
                      )
                  ]),
            ),
            Container(
              width: 200,
              height: 10,
              margin: const EdgeInsets.only(right: 20, top: 8),
              child: TextField(
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black38,
                      ),
                      hintText: "Search",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.green)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black54)),
                      isDense: true,
                      fillColor: Colors.white54,
                      filled: true,
                      contentPadding: const EdgeInsets.all(8.0))),
            )
          ],
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  MainBody({Key? key}) : super(key: key);
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Stack(alignment: Alignment.center, children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("skardu.jpg"), fit: BoxFit.cover, opacity: 0.9),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 30),
        width: width > 1008 ? width / 2.5 : width / 2,
        height: height / 1.2,
        child: Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(30)),
          elevation: 4,
          color: Colors.transparent,
          child: Column(
            children: [
              const SizedBox(height: 30),
              Text("Get Started",
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontSize: 30, wordSpacing: 3)),
              Text("Join Us In Exploring Pakistan's Beauty",
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontSize: 14, wordSpacing: 3)),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                    decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.all(14.0),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.white54,
                  filled: true,
                  hintText: "Username",
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                    decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.all(14.0),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.white54,
                  filled: true,
                  hintText: "Email ID",
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                    decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.all(14.0),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.white54,
                  focusColor: Colors.white,
                  filled: true,
                  hintText: "Contact Number",
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.all(14.0),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black54,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: Colors.white54,
                      focusColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.all(14.0),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black54,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: Colors.white54,
                      focusColor: Colors.white,
                      filled: true,
                      hintText: "Confirm Password",
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.only(
                            left: 18, right: 18, top: 18, bottom: 18),
                        enableFeedback: true)),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
