import 'package:faiznikah/src/widgets/appbar.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  static const id = "/contact";
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FaizNikahAppBar(
        hasImage: false,
        text: "Contact Us",
      ),
    );
  }
}
