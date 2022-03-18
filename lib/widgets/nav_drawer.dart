import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDrawerWidget extends StatefulWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("avatar.png"),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(
                      "Username",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "username@gmail.com",
                        style: GoogleFonts.poppins(
                            fontSize: 11, color: Colors.black38),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            buildMenuItem(
              text: "My Profile",
              icon: const Icon(
                Icons.person,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            buildMenuItem(
              text: "Friends",
              icon: const Icon(
                Icons.people,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            buildMenuItem(
              text: "Orders",
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({required String text, required Icon icon}) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(13)),
      child: ListTile(
        leading: icon,
        title: Text(
          text,
          style: GoogleFonts.poppins(color: Colors.black54, fontSize: 14),
        ),
        onTap: () {
          setState(() {});
        },
      ),
    );
  }
}
