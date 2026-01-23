
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ImageSlider extends StatelessWidget {
  final List<String> bannerImages;

  const ImageSlider({
    super.key,
    required this.bannerImages,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: bannerImages.length,

      itemBuilder: (context, index, realIndex) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            bannerImages[index],
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        );
      },

      options: CarouselOptions(
        height: 140,

        /// 🔥 FIXED BEHAVIOUR
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3), // ⏱️ every 3 sec
        autoPlayAnimationDuration:
            const Duration(milliseconds: 800),       // smooth
        autoPlayCurve: Curves.easeInOut,

        /// 🎯 UI FEEL
        viewportFraction: 0.92,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
      ),
    );
  }
}
