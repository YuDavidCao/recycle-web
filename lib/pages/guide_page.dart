import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_web/constants.dart';
import 'package:recycle_web/widgets/contact_us_floating_action_button.dart';

class GuidePage extends StatefulWidget {
  static const String route = '/GuidePage';
  const GuidePage({super.key});

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  final PageController controller = PageController();
  int _currentPage = 0;
  // List<String> _pages = ['Page 1', 'Page 2', 'Page 3'];
  List<Image> images = [
    Image.asset("assets/guide/guide_1.png", fit: BoxFit.scaleDown),
  ];
  List<String> pages = [
    "Homepage",
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onImageChange(int index) {
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

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
                    "Recycle",
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
                  const Text("Help",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                  SizedBox(
                    width: width * 6 / 31,
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            SelectableText(
              pages[_currentPage],
              style: GoogleFonts.openSans(
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height * 3 / 4,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: InteractiveViewer(
                      child: images[index],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(),
                IconButton(
                    onPressed: () {
                      if (_currentPage > 0) {
                        controller.animateToPage(
                          _currentPage - 1,
                          duration: globalPageViewDuration,
                          curve: Curves.easeInOut,
                        );
                        _currentPage--;
                      }
                    },
                    icon: const Icon(Icons.keyboard_arrow_left)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: images.map((Image page) {
                    int index = images.indexOf(page);
                    return PageViewerIndicator(
                      color:
                          _currentPage == index ? thirtyUIColor : Colors.grey,
                      index: index,
                      onImageChange: onImageChange,
                      controller: controller,
                    );
                  }).toList(),
                ),
                IconButton(
                    onPressed: () {
                      if (_currentPage < images.length - 1) {
                        controller.animateToPage(
                          _currentPage + 1,
                          duration: globalPageViewDuration,
                          curve: Curves.easeInOut,
                        );
                        _currentPage++;
                      }
                    },
                    icon: const Icon(Icons.keyboard_arrow_right)),
                const SizedBox(),
              ],
            ),
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
                "Recycle",
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
        body: Column(
          children: [
            SelectableText(
              pages[_currentPage],
              style: GoogleFonts.openSans(
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(
                  sectionGapPadding / 2, 0, sectionGapPadding / 2, 0),
              height: height * 3 / 4,
              child: PageView.builder(
                controller: controller,
                itemCount: images.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: images[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(),
                IconButton(
                    onPressed: () {
                      if (_currentPage > 0) {
                        controller.animateToPage(
                          _currentPage - 1,
                          duration: globalPageViewDuration,
                          curve: Curves.easeInOut,
                        );
                        _currentPage--;
                      }
                    },
                    icon: const Icon(Icons.keyboard_arrow_left)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: images.map((Image page) {
                    int index = images.indexOf(page);
                    return PageViewerIndicator(
                      color:
                          _currentPage == index ? thirtyUIColor : Colors.grey,
                      index: index,
                      onImageChange: onImageChange,
                      controller: controller,
                    );
                  }).toList(),
                ),
                IconButton(
                    onPressed: () {
                      if (_currentPage < images.length - 1) {
                        controller.animateToPage(
                          _currentPage + 1,
                          duration: globalPageViewDuration,
                          curve: Curves.easeInOut,
                        );
                        _currentPage++;
                      }
                    },
                    icon: const Icon(Icons.keyboard_arrow_right)),
                const SizedBox(),
              ],
            ),
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

class PageViewerIndicator extends StatelessWidget {
  final Color color;
  final int index;
  final Function(int) onImageChange;
  final PageController controller;
  const PageViewerIndicator(
      {super.key,
      required this.color,
      required this.index,
      required this.controller,
      required this.onImageChange});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.animateToPage(
          index,
          duration: globalPageViewDuration,
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        width: 10.0,
        height: 10.0,
        margin: const EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
