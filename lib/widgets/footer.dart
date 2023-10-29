import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:recycle_web/constants.dart';
import 'package:recycle_web/widgets/popup_form.dart';
import 'package:url_launcher/link.dart' as URL;

class Footer extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final double width;
  final double height;
  Footer({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    if (width > height) {
      return Container(
        decoration: const BoxDecoration(color: thirtyUIColor),
        child: Column(
          children: [
            const SizedBox(
              height: globalEdgePadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: width / 6,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              popupForm(context, width, height, _formKey);
                            },
                            child: const Text(
                              "Contact Us",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: sectionGapPadding,
                          ),
                          const Text(
                            "Email: yu.cao20041208@gmail.com",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacementNamed(
                                "/GuidePage",
                              );
                            },
                            child: const Text(
                              "Help",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: sectionGapPadding,
                          ),
                          URL.Link(
                              uri: Uri.parse(
                                  'https://recycleprivatepolicy.web.app/'),
                              builder: (context, function) {
                                return GestureDetector(
                                  onTap: () {
                                    js.context.callMethod('open', [
                                      'https://recycleprivatepolicy.web.app/'
                                    ]);
                                  },
                                  child: const Text(
                                    "Private Policy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20),
                                  ),
                                );
                              }),
                          // GestureDetector(
                          //   onTap: () async {
                          //     js.context.callMethod('open', [
                          //       'https://recycleprivatepolicy.web.app/'
                          //     ]);
                          //     // if (!await launchUrl(Uri.parse(
                          //     //     "https://recycleprivatepolicy.web.app/"))) {
                          //     //   // throw Exception('Could not launch $');
                          //     // }
                          //   },
                          //   child: const Text(
                          //     "Private Policy",
                          //     style: TextStyle(color: Colors.white,
                          //         fontWeight: FontWeight.normal, fontSize: 20),
                          //   ),
                          // ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: width / 6,
                ),
              ],
            ),
            const SizedBox(
              height: globalEdgePadding,
            ),
          ],
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(color: thirtyUIColor),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
              sectionGapPadding, 0, sectionGapPadding, 0),
          child: Column(
            children: [
              const SizedBox(
                height: globalEdgePadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox.shrink(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                popupForm(context, width, height, _formKey);
                              },
                              child: const Text(
                                "Contact Us",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: sectionGapPadding,
                            ),
                            const Text(
                              "Email: yu.cao20041208@gmail.com",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacementNamed(
                                  "/GuidePage",
                                );
                              },
                              child: const Text(
                                "Help",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: sectionGapPadding,
                            ),
                            URL.Link(
                                uri: Uri.parse(
                                    'https://recycleprivatepolicy.web.app/'),
                                builder: (context, function) {
                                  return GestureDetector(
                                    onTap: () {
                                      js.context.callMethod('open', [
                                        'https://recycleprivatepolicy.web.app/'
                                      ]);
                                    },
                                    child: const Text(
                                      "Private Policy",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15),
                                    ),
                                  );
                                }),
                            // GestureDetector(
                            //   onTap: () async {
                            //     js.context.callMethod('open', [
                            //       'https://recycleprivatepolicy.web.app/'
                            //     ]);
                            //     // await launchUrl(Uri.parse(
                            //     //     "https://recycleprivatepolicy.web.app/"));
                            //     // if (!await launchUrl(Uri.parse(
                            //     //     "https://recycleprivatepolicy.web.app/"))) {
                            //     //   // throw Exception('Could not launch $');
                            //     // } else {
                            //     //   print(1);
                            //     // }
                            //   },
                            //   child: const Text(
                            //     "Private Policy",
                            //     style: TextStyle(color: Colors.white,
                            //         fontWeight: FontWeight.normal, fontSize: 15),
                            //   ),
                            // ),
                          ],
                        ),
                        const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: globalEdgePadding,
              ),
            ],
          ),
        ),
      );
    }
  }
}
