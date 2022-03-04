import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../application/bloc/cart/cart_bloc.dart';
import '../../domain/cart/cart_item.dart';
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
    int itemCount = 1;
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(
          product.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Quantity'),
              CounterWidget(
                onValueChange: (value) {
                  itemCount = value;
                },
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                CurrencyFormatter.format(product.price),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  CartItem cartItem =
                      CartItem(product: product, itemCount: itemCount);
                  blocContext.read<CartBloc>().add(CartEvent.addItem(cartItem));
                  Navigator.pop(context);
                },
                child: const Text('Add To Cart'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
