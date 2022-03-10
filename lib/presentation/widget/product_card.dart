import 'package:flutter/material.dart';

import '../../domain/product/product.dart';
import '../core/currency_formatter.dart';
import 'widgets.dart';

class ListviewProductCard extends StatelessWidget {
  final Function(Product)? onProductCardTap;

  const ListviewProductCard({
    Key? key,
    required this.product,
    this.onProductCardTap,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onProductCardTap != null) {
          onProductCardTap!(product);
        }
      },
      child: Row(
        children: [
          ProductImage(
            height: 50,
            width: 50,
            imagestr: product.image,
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  product.category,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Text(
            CurrencyFormatter.format(product.price),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
