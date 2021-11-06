import 'package:faiznikah/src/widgets/appbar.dart';
import 'package:flutter/material.dart';

class SuccessStories extends StatelessWidget {
  const SuccessStories({Key? key}) : super(key: key);
  static const id = "/success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FaizNikahAppBar(
        hasImage: false,
        text: "Success Stories",
      ),
    );
  }
}
