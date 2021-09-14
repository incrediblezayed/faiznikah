import 'dart:io';

import 'package:faiznikah/src/widgets/network_image.dart';
import 'package:flutter/material.dart';

class FullImage extends StatelessWidget {
  final List<String> url;
  final int index;
  final bool isAsset;
  const FullImage(
      {Key? key, required this.url, this.index = 0, this.isAsset = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: url.length == 1
          ? Hero(
              tag: url.first,
              child: isAsset
                  ? Image.file(File(url.first))
                  : Image.network(url.first))
          : PageView(
              controller: PageController(initialPage: index),
              children: url
                  .map((e) => Hero(
                      tag: e + index.toString(),
                      child: isAsset
                          ? Image.file(File(e))
                          : CustomNetworkImage(imageUrl: e)))
                  .toList(),
            ),
    );
  }
}
