import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_web/constants.dart';
import 'package:url_launcher/link.dart' as URL;

class GeneralMockupWidget extends StatelessWidget {
  final double width;
  final double height;
  const GeneralMockupWidget(
      {super.key, required this.width, required this.height});

  final String titleText = "Recycle with Ease";
  final String subTitleText =
      "Recycling is an essential step that we all need to take to protect our planet. The Recycle Mobile App makes it easier for you to do your part. With our app, you can make a difference in the world and contribute to a greener future.";

  @override
  Widget build(BuildContext context) {
    if (width > height) {
      return SizedBox(
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width * 4 / 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SelectableText(titleText,
                      style: GoogleFonts.tinos(
                        textStyle: const TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  SelectableText(
                      subTitleText,
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontSize: 30.5,
                              height: 1.5,
                              color: Colors.white))),
                  const Divider(
                    color: tenUIColor,
                    thickness: 3,
                    endIndent: globalEdgePadding,
                  ),
                  const SizedBox(
                    height: globalEdgePadding,
                  ),
                  // URL.Link(
                  //     uri: Uri.parse('https://apps.apple.com/app/6451271995'),
                  //     builder: (context, function) {
                  //       return GestureDetector(
                  //         onTap: () {
                  //           js.context.callMethod('open',
                  //               ['https://apps.apple.com/app/6451271995']);
                  //         },
                  //         child: SizedBox(
                  //           height: sectionGapPadding,
                  //           child: Image.asset("assets/images/app_store.png"),
                  //         ),
                  //       );
                  //     }),
                ],
              ),
            ),
            SizedBox(
              width: width * 7 / 36,
              height: height,
              child: Image.asset("assets/temp.png"),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.fromLTRB(sectionGapPadding, globalEdgePadding,
            sectionGapPadding, globalEdgePadding),
        //height: height,
        child: Column(
          children: [
            const SizedBox(
              height: sectionGapPadding,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SelectableText(titleText,
                      style: GoogleFonts.tinos(
                        textStyle: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  SelectableText(subTitleText,
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontSize: 19, height: 1.5, color: Colors.white))),
                  const Divider(
                    color: tenUIColor,
                    thickness: 3,
                  ),
                  const SizedBox(
                    height: globalEdgePadding,
                  ),
                  // Center(
                  //   child: URL.Link(
                  //       uri: Uri.parse('https://apps.apple.com/app/6451271995'),
                  //       builder: (context, function) {
                  //         return GestureDetector(
                  //           onTap: () {
                  //             js.context.callMethod('open',
                  //                 ['https://apps.apple.com/app/6451271995']);
                  //           },
                  //           child: SizedBox(
                  //             height: sectionGapPadding,
                  //             child: Image.asset("assets/images/app_store.png"),
                  //           ),
                  //         );
                  //       }),
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: globalEdgePadding,
            ),
            Image.asset("assets/temp.png")
          ],
        ),
      );
    }
  }
}
