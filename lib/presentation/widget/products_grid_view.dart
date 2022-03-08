import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../domain/product/product.dart';
import '../core/currency_formatter.dart';
import 'widgets.dart';

class ProductGridView extends StatelessWidget {
  final List<Product> products;
  final BuildContext blocContext;

  const ProductGridView({
    Key? key,
    required this.products,
    required this.blocContext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Expanded(
          child: ResponsiveGridList(
            desiredItemWidth: 150,
            minSpacing: 16,
            children: products.map(
              (product) {
                return _gridViewCard(context, product);
              },
            ).toList(),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _gridViewCard(BuildContext context, Product product) {
    return GestureDetector(
      onTap: () {
        _showDialog(context, product);
      },
      child: Container(
        height: 180,
        alignment: const Alignment(0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImage(
              height: 130,
              imagestr: product.image,
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          product.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          CurrencyFormatter.format(product.price),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showDialog(BuildContext context, Product product) {
    return showDialog(
      context: context,
      builder: (context) => ProductDialog(
        blocContext: blocContext,
        product: product,
      ),
    );
  }
}
