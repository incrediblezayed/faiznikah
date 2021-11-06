import 'package:faiznikah/src/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Advertisement extends StatelessWidget {
  static const id = "/advertisement";
  const Advertisement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FaizNikahAppBar(
        hasImage: false,
        text: "Advertisement",
      ),
    );
  }
}
