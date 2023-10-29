import 'package:flutter/material.dart';

const double globalEdgePadding = 20.0;

const double globalMarginPadding = 10.0;

const double globalAppBarHeight = 100.0;

const int pageTransitionTime = 200;

const double sectionGapPadding = 60.0;

const Color sixtyUIColor = Colors.white;

const Color thirtyUIColor = Color(0xFF517551);

const Color tenUIColor = Colors.amber;

const double defaultBottomAppBarHeight = 76;

const Duration globalPageViewDuration = Duration(milliseconds: 500);

const EdgeInsets globalMiddleWidgetPadding = EdgeInsets.fromLTRB(
    globalEdgePadding,
    globalMarginPadding,
    globalEdgePadding,
    globalMarginPadding);

const LinearGradient linearGradientHolder = LinearGradient(
  begin: Alignment(0, -1),
  end: Alignment(0, 1),
  colors: [thirtyUIColor, tenUIColor],
);
