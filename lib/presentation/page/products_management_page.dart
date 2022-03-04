import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/product_bloc.dart';
import '../../injection.dart';
import '../routes.dart';
import '../widget/widgets.dart';

class ProductsManagementPage extends StatelessWidget {
  const ProductsManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Product Management'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, BitPosRoutes.addProduct).then(
                (value) => context
                    .read<ProductBloc>()
                    .add(const ProductEvent.getProducts()),
              );
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => Container(),
                productsLoaded: (currentState) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: currentState.products.length,
                      itemBuilder: (_, i) {
                        var product = currentState.products[i];
                        return ListviewProductCard(
                          product: product,
                          onProductCardTap: (product) {
                            Navigator.pushNamed(
                              context,
                              BitPosRoutes.productDetail,
                              arguments: product,
                            );
                          },
                        );
                      },
                    ),
                  );
                },
                loading: (_) => const Expanded(
                  child: Center(child: CircularProgressIndicator()),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
