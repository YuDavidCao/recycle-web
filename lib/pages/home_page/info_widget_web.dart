import 'package:flutter/material.dart';
import 'package:recycle_web/constants.dart';
import 'package:recycle_web/pages/info_sheets.dart/display_info_popup.dart';

class InfoWidgetWeb extends StatelessWidget {
  final double width;
  final double height;
  final String imgPath;
  final String label;
  final String content;
  const InfoWidgetWeb(
      {super.key,
      required this.width,
      required this.height,
      required this.imgPath,
      required this.label,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: width / 5,
      height: height / 2,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.contain,
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(10.0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(tenUIColor),
                  ),
                  onPressed: () {
                    displayTypeInfo(context, label, width, height);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      label,
                      style:
                          const TextStyle(fontSize: 30.5, color: Colors.black),
                    ),
                  ),
                ),
              ),
              Text(content),
            ],
          ),
        ],
      ),
    );
  }
}