import 'dart:ui';

import 'package:ertser_portfolio/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/bi.dart';
import 'package:iconify_flutter_plus/icons/bx.dart';
import 'package:iconify_flutter_plus/icons/bxl.dart';
import 'package:iconify_flutter_plus/icons/fluent_mdl2.dart';
import 'package:iconify_flutter_plus/icons/iconoir.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    double heightDevice = MediaQuery.of(context).size.height;
    double widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        backgroundColor: Colors.purple,
        elevation: 0.0,
        iconTheme: const IconThemeData(size: 25.0, color: Colors.black),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TabsWeb("Home"),
            TabsWeb("Works"),
            TabsWeb("Blog"),
            TabsWeb("About"),
            TabsWeb("Contact"),
          ],
        ),
      ),
      body: ListView(
        children: [
          // First section
          SizedBox(
            height: heightDevice - 455,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: const Sans("Hi! I'm", 28, true, Colors.white),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Sans("Daniel Martínez", 75, true, Colors.black),
                    const Sans("Full Stack developer", 45, false, Colors.black),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.email,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Sans("danilmartinezbra@gmail.com", 25, false,
                            Colors.black)
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.call,
                          size: 30,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Sans("+34 652 61 87 97", 25, false, Colors.black)
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 30,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Sans("Jerez de la Frontera, Spain", 25, false,
                            Colors.black)
                      ],
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 207.0,
                  backgroundColor: Colors.purple,
                  child: CircleAvatar(
                    radius: 203.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 200.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("my_face.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomDivider(widthDevice),
          // Second section
          SizedBox(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "web.jpg",
                  height: heightDevice / 1.3,
                ),
                SizedBox(
                  width: widthDevice / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Sans("About me", 45, true, Colors.black),
                      const SizedBox(
                        height: 15,
                      ),
                      const Sans(
                          "Hi there! My name is Daniel Martínez, I'm a spanish developer and kebab enjoyer. I specialize in back-end development, but I love front-end too.",
                          25,
                          false,
                          Colors.black),
                      const SizedBox(
                        height: 4,
                      ),
                      const Sans(
                          "I strive to ensure great performance with how multi-platform apps interact with the end user.",
                          25,
                          false,
                          Colors.black),
                      const SizedBox(
                        height: 10,
                      ),
                      const Sans("My Skills", 35.0, true, Colors.black),
                      const SizedBox(
                        height: 15,
                      ),
                      Wrap(
                        spacing: 3,
                        runSpacing: 10,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: const EdgeInsets.all(7.0),
                            child: const IntrinsicWidth(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Iconify(Bxl.java),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Sans("Java 1.7+", 15, false, Colors.black),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: const EdgeInsets.all(7.0),
                            child: const IntrinsicWidth(
                              child: Row(
                                children: [
                                  Iconify(Bx.leaf),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Sans("Spring Framework", 15, false,
                                      Colors.black),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: const EdgeInsets.all(7.0),
                            child: const IntrinsicWidth(
                              child: Row(
                                children: [
                                  Iconify(FluentMdl2.documentation),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Sans("Swagger (OpenAPI)", 15, false,
                                      Colors.black),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: const EdgeInsets.all(7.0),
                            child: const IntrinsicWidth(
                              child: Row(
                                children: [
                                  Iconify(Bxl.flutter),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Sans("Flutter", 15, false, Colors.black),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: const EdgeInsets.all(7.0),
                            child: const IntrinsicWidth(
                              child: Row(
                                children: [
                                  Iconify(Bxl.firebase),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Sans("Firebase", 15, false, Colors.black),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: const EdgeInsets.all(7.0),
                            child: const IntrinsicWidth(
                              child: Row(
                                children: [
                                  Iconify(Iconoir.www),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Sans("HTML, CSS (SASS/SCSS) & JS", 15, false,
                                      Colors.black),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: const EdgeInsets.all(7.0),
                            child: const IntrinsicWidth(
                              child: Row(
                                children: [
                                  Iconify(Bxl.typescript),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Sans("TypeScript", 15, false, Colors.black),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: const EdgeInsets.all(7.0),
                            child: const IntrinsicWidth(
                              child: Row(
                                children: [
                                  Iconify(Bxl.angular),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Sans("Angular", 15, false, Colors.black),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: const EdgeInsets.all(7.0),
                            child: const IntrinsicWidth(
                              child: Row(
                                children: [
                                  Iconify(Bi.search),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Sans("MySQL, PSQL, TSQL", 15, false,
                                      Colors.black),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomDivider(widthDevice),
          // Third section
          SizedBox(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Sans("What I do?", 45, true, Colors.black),
                Wrap(
                  spacing: widthDevice / 12,
                  runSpacing: 20,
                  children: const [
                    LevitatingCardState("webL.png", "Web development"),
                    LevitatingCardState("app.png", "App development"),
                    LevitatingCardState("backend.png", "Back-end development"),
                  ],
                ),
              ],
            ),
          ),
          CustomDivider(widthDevice),
          // Fourth section
          SizedBox(
            height: heightDevice / 1.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Sans("Contact Me", 40, true, Colors.black),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          width: 500,
                          heading: "First name",
                          hintText: "Please write your first name.",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm(
                          width: 500,
                          heading: "Email",
                          hintText: "Please write your email.",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          width: 500,
                          heading: "Last name",
                          hintText: "Please write your last name.",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm(
                          width: 500,
                          heading: "Phone number",
                          hintText: "Please write your phone number.",
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  heading: "Message",
                  width: widthDevice / 1.5,
                  hintText: "Please write your message here.",
                  maxLines: 10,
                ),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 90.0,
                  minWidth: 200.0,
                  color: Colors.purple,
                  child: const Sans("Submit", 30, false, Colors.white),
                  onPressed: () {},
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
