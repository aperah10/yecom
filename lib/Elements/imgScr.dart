import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImgSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        height: 150,
        // aspectRatio: 16 / 9,
        // viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayAnimationDuration: Duration(milliseconds: 200),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width / 1.25,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                decoration: BoxDecoration(),
                child: Pics(
                  src: 'assets/icons/banner-img.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ));
          },
        );
      }).toList(),
    ));
  }
}

// ! Common Image File

class Pics extends StatelessWidget {
  final String? src;
  final bool? networkImg;
  final BoxFit? fit;
  final double? height, width;
  final Color? color;

  const Pics(
      {Key? key,
      this.src,
      this.color,
      this.networkImg,
      this.fit,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: src != null ? imgs() : null);
  }

  Widget imgs() {
    if (networkImg == true) {
      return Image.network(
        src ?? '',
        fit: fit,
        height: height,
        width: width,
        color: color,
      );
    } else {
      return Image.asset(
        src ?? '',
        fit: fit,
        height: height,
        width: width,
        color: color,
      );
    }
  }
}
