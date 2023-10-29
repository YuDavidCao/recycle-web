import 'package:flutter/material.dart';
import 'package:recycle_web/pages/info_sheets.dart/cardboard_info.dart';
import 'package:recycle_web/pages/info_sheets.dart/glass_info.dart';
import 'package:recycle_web/pages/info_sheets.dart/metal_info.dart';
import 'package:recycle_web/pages/info_sheets.dart/paper_info.dart';
import 'package:recycle_web/pages/info_sheets.dart/plastic_info.dart';
import 'package:recycle_web/pages/info_sheets.dart/trash_info.dart';

void displayTypeInfo(
    BuildContext context, String type, double width, double height) async {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          height: height * 2 / 3,
          width: width / 2,
          child: evalTypeWidget(type),
        ),
        actions: [
          TextButton(
            child: const Text(
              "Ok",
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      );
    },
  );
}

Widget evalTypeWidget(String type) {
  switch (type) {
    case 'cardboard':
      return const CardBoardInfo();
    case 'glass':
      return const GlassInfo();
    case 'metal':
      return const MetalInfo();
    case 'paper':
      return const PaperInfo();
    case 'plastic':
      return const PlasticInfo();
    case 'trash':
      return const TrashInfo();
    default:
      return const Placeholder();
  }
}
