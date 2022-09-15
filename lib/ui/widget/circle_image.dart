import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String? imageUrl;
  final double? imageSize;
  const CircleImage({Key? key, this.imageUrl, this.imageSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = imageSize ?? 100;
    double borderRadiusSize = size / 2;
    return CachedNetworkImage(
      height: size,
      width: size,
      imageUrl: imageUrl ?? '',
      imageBuilder: (context, imageProvider) => Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadiusSize)),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) =>
          const Icon(Icons.error_outline, size: 50),
    );
  }
}
