import 'package:faiznikah/src/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  static const id = '/blog';
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FaizNikahAppBar(
        text: "Blogs",
        hasImage: false,
      ),
    );
  }
}
