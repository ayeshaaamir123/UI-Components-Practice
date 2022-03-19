import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'get_started_page.dart';
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
        body: GetStartedPage(),
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
