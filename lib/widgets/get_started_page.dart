import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_components_practice/widgets/custom_text_field.dart';

class GetStartedPage extends StatelessWidget {
  GetStartedPage({Key? key}) : super(key: key);
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
        margin: const EdgeInsets.only(top: 30),
        width: width > 1008 ? width / 2.5 : width / 2,
        height: height / 1.2,
        child: Card(
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2, color: Colors.white),
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
              CustomTextField(text: "Username"),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(text: "Email Id"),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(text: "Contact Number"),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                text: "Password",
                isObscure: true,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                text: "Confirm Password",
                isObscure: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.only(
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
