import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarDesign extends StatelessWidget {
  bool isTitleCenter = true;
  String titleText = "PracticeNav";
  List actions = ["Home", "About", "Contact Us"];
  NavbarDesign(
      {Key? key, this.isTitleCenter = false, this.titleText = "PracticeNav"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: actions.length,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 10,
          title: Text(
            titleText,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w400, color: Colors.black),
          ),
          centerTitle: isTitleCenter ? true : false,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black38,
            ),
            onPressed: () {},
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
                  indicatorPadding: const EdgeInsets.only(bottom: 5),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.blueAccent,
                  labelColor: Colors.black,
                  isScrollable: true,
                  unselectedLabelColor: Colors.black38,
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
                          borderSide:
                              const BorderSide(color: Colors.blueAccent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black38)),
                      isDense: true,
                      contentPadding: const EdgeInsets.all(8.0))),
            )
          ],
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
