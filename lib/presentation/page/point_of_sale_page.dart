import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/cart/cart_bloc.dart';
import '../../application/bloc/product/product_bloc.dart';
import '../../injection.dart';
import '../widget/cart_panel.dart';
import '../widget/widgets.dart';

class PointOfSalePage extends StatelessWidget {
  const PointOfSalePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartBloc>()..add(const CartEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Point of Sale'),
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [Container()],
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => Container(),
              productsLoaded: (currentState) {
                return BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return ProductGridView(
                      products: currentState.products,
                      blocContext: context,
                    );
                  },
                );
              },
            );
          },
        ),
        floatingActionButton: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => Container(),
              cartItemLoaded: (currentState) => Badge(
                badgeContent: Text(
                  "${currentState.cart.items.length}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                showBadge: currentState.cart.items.isNotEmpty,
                animationType: BadgeAnimationType.scale,
                padding: const EdgeInsets.all(8),
                elevation: 0,
                badgeColor: Theme.of(context).colorScheme.secondary,
                child: FloatingActionButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  elevation: 0,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: const Icon(Icons.shopping_cart),
                ),
              ),
            );
          },
        ),
        drawerEnableOpenDragGesture: false,
        endDrawer: Drawer(
          child: CartPanel(
            blocContext: context,
          ),
        ),
      ),
    );
  }
}
