import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/cart/cart_bloc.dart';
import '../core/currency_formatter.dart';

class CartPanel extends StatelessWidget {
  final BuildContext blocContext;
  const CartPanel({
    Key? key,
    required this.blocContext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          cartItemLoaded: (cState) => SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cState.cart.items.length,
                    itemBuilder: (context, index) {
                      var item = cState.cart.items[index];
                      return ListTile(
                        title: Text(item.product.name +
                            " x" +
                            item.itemCount.toString()),
                        subtitle: Text(
                          "@ ${CurrencyFormatter.format(item.product.price)}",
                        ),
                        trailing: Text(
                          CurrencyFormatter.format(item.totalPrice),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.shopping_cart_checkout),
                                ),
                                Text(
                                  "Checkout",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              CurrencyFormatter.format(cState.cart.totalPrice),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
