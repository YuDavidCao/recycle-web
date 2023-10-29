import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_web/constants.dart';
import 'package:recycle_web/firebase/firebase_firestore_service.dart';

void popupForm(BuildContext context, double width, double height,
    GlobalKey<FormState> _formKey) {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Padding(
            padding: EdgeInsets.fromLTRB(
                globalEdgePadding,
                (width > height) ? globalEdgePadding : 0,
                globalEdgePadding,
                (width > height) ? globalEdgePadding : 0),
            child: SizedBox(
              height: max(height / 2, 500),
              width: max(width / 4, 600),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SelectableText(
                      "Contact Us",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: (width > height) ? 30 : 18.5,
                              height: 2)),
                    ),
                    (width > height)
                        ? const SizedBox(
                            height: globalEdgePadding,
                          )
                        : const SizedBox(),
                    TextFormField(
                      controller: emailController,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: const InputDecoration(
                          isDense: true,
                          labelText: 'Email: ',
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.multiline,
                      validator: (val) =>
                          val!.isEmpty ? 'Cannot be blank' : null,
                    ),
                    SizedBox(
                      width: 1,
                      height: (width > height)
                          ? globalEdgePadding
                          : globalMarginPadding,
                    ),
                    TextFormField(
                      controller: titleController,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: const InputDecoration(
                          isDense: true,
                          labelText: 'Title: ',
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.multiline,
                      validator: (val) =>
                          val!.isEmpty ? 'Cannot be blank' : null,
                    ),
                    SizedBox(
                      width: 1,
                      height: (width > height)
                          ? globalEdgePadding
                          : globalMarginPadding,
                    ),
                    Flexible(
                      child: TextFormField(
                        controller: messageController,
                        textAlignVertical: TextAlignVertical.top,
                        expands: true,
                        decoration: const InputDecoration(
                            isDense: true,
                            labelText: 'Message: ',
                            border: OutlineInputBorder()),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        validator: (val) =>
                            val!.isEmpty ? 'Cannot be blank' : null,
                      ),
                    ),
                    SizedBox(
                      width: 1,
                      height: (width > height)
                          ? globalEdgePadding
                          : globalMarginPadding,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            FirebaseFirestoreService.addMessage(
                                email: emailController.text,
                                title: titleController.text,
                                message: messageController.text);
                            Navigator.of(context).pop();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              globalEdgePadding,
                              (width > height) ? globalEdgePadding : 0,
                              globalEdgePadding,
                              (width > height) ? globalEdgePadding : 0),
                          child: Text(
                            "Submit",
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontSize: (width > height) ? 18.5 : 15,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
