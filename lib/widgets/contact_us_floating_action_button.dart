import 'package:flutter/material.dart';
import 'package:recycle_web/constants.dart';
import 'package:recycle_web/widgets/popup_form.dart';

class ContactUsFloatingActionButton extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final double height;
  final double width;
  ContactUsFloatingActionButton(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      onPressed: () {
        popupForm(context, width, height, _formKey);
      },
      // foregroundColor: thirtyUIColor,
      backgroundColor: tenUIColor,
      child: const Text(
        "Contact Us",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
