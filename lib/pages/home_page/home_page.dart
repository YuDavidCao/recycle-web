import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_web/constants.dart';
import 'package:recycle_web/pages/home_page/info_widget_mobile.dart';
import 'package:recycle_web/pages/home_page/info_widget_web.dart';
import 'package:recycle_web/widgets/contact_us_floating_action_button.dart';
import 'package:recycle_web/widgets/footer.dart';
import 'package:recycle_web/widgets/general_mockup_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    if (width > height) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: thirtyUIColor,
          toolbarHeight: globalAppBarHeight,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width / 6,
                  ),
                  Image.asset("assets/app_icon.png"),
                  const SizedBox(
                    width: globalEdgePadding * 2,
                  ),
                  const Text(
                    "Garbage recycle guide",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(
                        "/HomePage",
                      );
                    },
                    child: const Text("Home",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                  SizedBox(
                    width: width / 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(
                        "/GuidePage",
                      );
                    },
                    child: const Text("Help",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                  SizedBox(
                    width: width * 6 / 31,
                  ),
                ],
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: SizedBox(
                    width: width,
                    height: height,
                    child: Image.asset(
                      "assets/hero_image.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: width,
                  height: height,
                  color: Colors.black.withOpacity(0.5),
                ),
                GeneralMockupWidget(width: width, height: height),
                // Text(
                //   "Recycle with Ease - Use Our App",
                //   style: GoogleFonts.roboto(
                //       textStyle: const TextStyle(
                //           color: Colors.white, fontSize: 80, height: 1.5, fontWeight: FontWeight.bold)),
                // ),
              ],
            ),
            SizedBox(
              height: height / 6,
            ),
            Center(
              child: SelectableText(
                "Recycle type",
                style: GoogleFonts.openSans(
                    textStyle: const TextStyle(fontSize: 49.3)),
              ),
            ),
            const Divider(
              color: tenUIColor,
              indent: sectionGapPadding,
              endIndent: sectionGapPadding,
              thickness: 5,
            ),
            SizedBox(
              height: height / 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox.shrink(),
                InfoWidgetWeb(
                    width: width,
                    height: height,
                    imgPath: "assets/images/cardboard.png",
                    label: "cardboard",
                    content: ""),
                InfoWidgetWeb(
                    width: width,
                    height: height,
                    imgPath: "assets/images/glass.png",
                    label: "glass",
                    content: ""),
                InfoWidgetWeb(
                    width: width,
                    height: height,
                    imgPath: "assets/images/metal.png",
                    label: "metal",
                    content: ""),
                const SizedBox.shrink(),
              ],
            ),
            SizedBox(
              height: height / 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox.shrink(),
                InfoWidgetWeb(
                    width: width,
                    height: height,
                    imgPath: "assets/images/paper.png",
                    label: "paper",
                    content: ""),
                InfoWidgetWeb(
                    width: width,
                    height: height,
                    imgPath: "assets/images/plastic.png",
                    label: "plastic",
                    content: ""),
                InfoWidgetWeb(
                    width: width,
                    height: height,
                    imgPath: "assets/images/trash.png",
                    label: "trash",
                    content: ""),
                const SizedBox.shrink(),
              ],
            ),
            SizedBox(
              height: height / 6,
            ),
            Footer(width: width, height: height),
          ],
        ),
        floatingActionButton: ContactUsFloatingActionButton(
          height: height,
          width: width,
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: thirtyUIColor,
          toolbarHeight: globalAppBarHeight / 2,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/app_icon.png"),
              const Text(
                    "Garbage recycle guide",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(
                    "/HomePage",
                  );
                },
                child: const Text("Home",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(
                    "/GuidePage",
                  );
                },
                child: const Text("Help",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: SizedBox(
                    width: width,
                    height: height,
                    child: Image.asset(
                      "assets/hero_image.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: width,
                  height: height,
                  color: Colors.black.withOpacity(0.5),
                ),
                GeneralMockupWidget(width: width, height: height),
                // Text(
                //   "Recycle with Ease - Use Our App",
                //   style: GoogleFonts.roboto(
                //       textStyle: const TextStyle(
                //           color: Colors.white, fontSize: 80, height: 1.5, fontWeight: FontWeight.bold)),
                // ),
              ],
            ),
            const SizedBox(
              height: globalEdgePadding,
            ),
            Center(
              child: SelectableText(
                "Recycle Types:",
                style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                  fontSize: 30.5,
                )),
              ),
            ),
            const Divider(
              color: tenUIColor,
              indent: globalEdgePadding,
              endIndent: globalEdgePadding,
              thickness: 5,
            ),
            const SizedBox(
              height: globalEdgePadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoWidgetMobile(
                    width: width,
                    height: height,
                    imgPath: "assets/images/cardboard.png",
                    label: "cardboard",
                    content: ""),
                InfoWidgetMobile(
                    width: width,
                    height: height,
                    imgPath: "assets/images/glass.png",
                    label: "glass",
                    content: ""),
              ],
            ),
            const SizedBox(
              height: globalEdgePadding * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoWidgetMobile(
                    width: width,
                    height: height,
                    imgPath: "assets/images/metal.png",
                    label: "metal",
                    content: ""),
                InfoWidgetMobile(
                    width: width,
                    height: height,
                    imgPath: "assets/images/paper.png",
                    label: "paper",
                    content: ""),
              ],
            ),
            const SizedBox(
              height: globalEdgePadding * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoWidgetMobile(
                    width: width,
                    height: height,
                    imgPath: "assets/images/plastic.png",
                    label: "plastic",
                    content: ""),
                InfoWidgetMobile(
                    width: width,
                    height: height,
                    imgPath: "assets/images/trash.png",
                    label: "trash",
                    content: ""),
              ],
            ),
            const SizedBox(
              height: globalEdgePadding,
            ),
            Footer(width: width, height: height),
          ],
        ),
        floatingActionButton: ContactUsFloatingActionButton(
          height: height,
          width: width,
        ),
      );
    }
  }
}
