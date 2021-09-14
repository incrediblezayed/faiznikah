import 'package:carousel_slider/carousel_slider.dart';
import 'package:faiznikah/src/models/user_model.dart';
import 'package:faiznikah/src/utils/globals.dart';
import 'package:faiznikah/src/utils/theme.dart';
import 'package:faiznikah/src/widgets/network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'full_screen_image.dart';

class ImageSwiper extends StatelessWidget with Globals {
  final User user;
  ImageSwiper({Key? key, required this.user}) : super(key: key);
  int get length => images().length;

  final String noImage =
      "https://propertywiselaunceston.com.au/wp-content/themes/property-wise/images/no-image.png";

  List<String> images() => [
        if (checkImage(user.imageProfile)) imageString(user.imageProfile!),
        if (checkImage(user.imageExtra1)) imageString(user.imageExtra1),
        if (checkImage(user.imageExtra2)) imageString(user.imageExtra2),
        if (checkImage(user.imageExtra3)) imageString(user.imageExtra3),
        if (checkImage(user.imageExtra4)) imageString(user.imageExtra4),
      ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width * 0.6,
      width: size.width * 0.6,
      child: length != 0
          ? length == 1
              ? GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullImage(url: images()),
                        ));
                  },
                  child: CustomNetworkImage(
                    imageUrl: images().first == "" ? noImage : images().first,
                    height: kIsWeb ? size.height * 0.3 : size.width * 0.4,
                    width: kIsWeb ? size.height * 0.3 : size.width * 0.4,
                  ),
                )
              : CarouselSlider(
                  options: CarouselOptions(
                    height: (kIsWeb ? size.height * 0.3 : size.width * 0.5),
                    enableInfiniteScroll: true,

                    // disableCenter: true,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  ),
                  items: [
                    for (int i = 0; i < length; i++)
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FullImage(
                                      url: images(),
                                      index: i,
                                    ),
                                  ));
                            },
                            child: Hero(
                              tag: images().elementAt(i) + i.toString(),
                              child: CustomNetworkImage(
                                imageUrl:
                                    images()[i] == "" ? noImage : images()[i],
                                height: kIsWeb
                                    ? size.height * 0.5
                                    : size.width * 0.4,
                                width: kIsWeb
                                    ? size.height * 0.5
                                    : size.width * 0.5,
                              ),
                            ),
                          ),
                        ],
                      )
                  ],
                )
          : Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: AppColors.firstColor,
                  ),
                ),
                child: const Text(
                  'No Image Selected',
                  textAlign: TextAlign.center,
                ),
                alignment: Alignment.center,
              ),
            ),
    );
  }
}

