import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/cart/cart_bloc.dart';
import '../../domain/entity/cart/cart_item.dart';
import '../../domain/entity/product/product.dart';
import '../core/currency_formatter.dart';
import 'widgets.dart';

class ProductDialog extends StatefulWidget {
  final Product product;
  final BuildContext blocContext;

  const ProductDialog({
    Key? key,
    required this.product,
    required this.blocContext,
  }) : super(key: key);

  @override
  State<ProductDialog> createState() => _ProductDialogState();
}

class _ProductDialogState extends State<ProductDialog> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        widget.product.name,
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
                setState(() {
                  itemCount = value;
                });
              },
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              CurrencyFormatter.format(widget.product.price * itemCount),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                CartItem cartItem =
                    CartItem(product: widget.product, itemCount: itemCount);
                widget.blocContext
                    .read<CartBloc>()
                    .add(CartEvent.addItem(cartItem));
                Navigator.pop(context);
              },
              child: const Text('Add To Cart'),
            ),
          ],
        ),
      ],
    );
  }
}
