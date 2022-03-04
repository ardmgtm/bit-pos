import 'package:flutter/material.dart';

import '../core/image_helper.dart';

class ProductImage extends StatelessWidget {
  final String? imagestr;
  final double? height;
  final double? width;

  const ProductImage({
    Key? key,
    this.imagestr,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return imagestr == ''
        ? Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
          )
        : Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              image: DecorationImage(
                image: MemoryImage(ImageHelper.dataFromBase64String(imagestr!)),
                fit: BoxFit.cover,
              ),
            ),
          );
  }
}
