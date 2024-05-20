import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error_outline),
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
  }

