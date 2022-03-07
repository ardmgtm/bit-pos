import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/cart/cart_bloc.dart';
import '../core/currency_formatter.dart';
import 'widgets.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cart",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          context
                              .read<CartBloc>()
                              .add(const CartEvent.started());
                        },
                        icon: const Icon(Icons.clear),
                        label: const Text("Clear"),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: cState.cart.items.length,
                    itemBuilder: (context, index) {
                      var item = cState.cart.items[index];
                      return ListTile(
                        title: Text(item.product.name +
                            " x" +
                            item.itemCount.toString()),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              CurrencyFormatter.format(
                                item.product.price,
                                autoCompact: true,
                              ),
                            ),
                            Row(
                              children: [
                                CounterWidget(
                                  onValueChange: (val) {
                                    context.read<CartBloc>().add(
                                        CartEvent.changeItemCount(index, val));
                                  },
                                  initVal: item.itemCount,
                                ),
                                TextButton.icon(
                                  onPressed: () {
                                    context
                                        .read<CartBloc>()
                                        .add(CartEvent.removeItem(index));
                                  },
                                  icon: const Icon(
                                    Icons.delete_outline,
                                    size: 20,
                                  ),
                                  label: const Text("Remove"),
                                ),
                              ],
                            )
                          ],
                        ),
                        trailing: Text(
                          CurrencyFormatter.format(item.totalPrice,
                              autoCompact: true),
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
                      // height: 100,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                                    child: Icon(
                                      Icons.shopping_cart_checkout,
                                      size: 18,
                                    ),
                                  ),
                                  Text(
                                    "Checkout",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                CurrencyFormatter.format(
                                    cState.cart.totalPrice),
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
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
