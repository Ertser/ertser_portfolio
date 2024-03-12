import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.roboto(
                shadows: const [
                  Shadow(
                    color: Colors.white,
                    offset: Offset(0, -5),
                  ),
                ],
                color: Colors.transparent,
                fontSize: 30.0,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
                decorationColor: Colors.white,
              )
            : GoogleFonts.roboto(color: Colors.white, fontSize: 27.0),
        child: Text(
          widget.title,
        ),
      ),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;
  final bool isBold;
  final Color color;
  const Sans(this.text, this.size, this.isBold, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }
}

class LevitatingCardState extends StatefulWidget {
  final String imageAsset;
  final String cardTitle;
  const LevitatingCardState(this.imageAsset, this.cardTitle, {super.key});

  @override
  State<LevitatingCardState> createState() => _LevitatingCardStateState();
}

class _LevitatingCardStateState extends State<LevitatingCardState> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        isHovering = true;
      }),
      onExit: (_) => setState(() {
        isHovering = false;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: EdgeInsets.only(
          top: isHovering ? 0 : 10,
          bottom: isHovering ? 10 : 0,
        ),
        child: Card(
          elevation: isHovering ? 30 : 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          shadowColor: Colors.purple,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  widget.imageAsset,
                  width: 400,
                  height: 400,
                ),
                const SizedBox(
                  height: 15,
                ),
                Sans(
                  widget.cardTitle,
                  30,
                  true,
                  Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  final double widthDevice;
  const CustomDivider(this.widthDevice, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: widthDevice / 2,
        height: 5.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.purple, Colors.orange],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final String heading;
  final double width;
  final String hintText;
  final int? maxLines;
  const TextForm(
      {super.key,
      required this.heading,
      required this.width,
      required this.hintText,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 20, false, Colors.black),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: width,
          child: TextFormField(
            maxLines: maxLines ?? 1,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purple,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purpleAccent,
                  width: 2.0,
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
