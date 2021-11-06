import 'package:faiznikah/src/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  static const id = "/events";
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FaizNikahAppBar(
        hasImage: false,
        text: "Events",
      ),
    );
  }
}
