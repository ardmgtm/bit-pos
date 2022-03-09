import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/product/product_bloc.dart';
import '../../application/bloc/product_filter/product_filter_bloc.dart';
import '../../injection.dart';
import '../routes.dart';
import '../widget/widgets.dart';

class ProductsManagementPage extends StatelessWidget {
  const ProductsManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchInput = TextEditingController();

    var productBloc = context.read<ProductBloc>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BlocProvider(
        create: (context) => getIt<ProductFilterBloc>()
          ..add(productBloc.state.maybeMap<ProductFilterEvent>(
            orElse: () => const ProductFilterEvent.started(),
            productsLoaded: (state) => ProductFilterEvent.filter(
              products: state.products,
            ),
          )),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text('Product Management'),
          ),
          body: Column(
            children: [
              Container(
                color: Theme.of(context).colorScheme.primary,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    children: [
                      BlocBuilder<ProductFilterBloc, ProductFilterState>(
                        builder: (context, state) {
                          return Expanded(
                            child: TextField(
                              controller: _searchInput,
                              onChanged: (text) {
                                var filterBloc =
                                    context.read<ProductFilterBloc>();
                                productBloc.state.mapOrNull(
                                  productsLoaded: (statedata) {
                                    filterBloc.add(ProductFilterEvent.filter(
                                      products: statedata.products,
                                      search: text,
                                    ));
                                  },
                                );
                                debugPrint(filterBloc.state.toString());
                              },
                              decoration: const InputDecoration(
                                hintText: "Search",
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 16),
                      IconButton(
                        iconSize: 24,
                        padding: const EdgeInsets.all(0),
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          Navigator.pushNamed(context, BitPosRoutes.addProduct)
                              .then((value) => context
                                  .read<ProductBloc>()
                                  .add(const ProductEvent.getProducts()));
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  var productBlocContext = context;
                  return state.maybeMap(
                    orElse: () => Container(),
                    productsLoaded: (currentState) {
                      return BlocBuilder<ProductFilterBloc, ProductFilterState>(
                        builder: (context, state) {
                          return state.maybeMap(
                              orElse: () => Container(),
                              filtered: (filterState) {
                                var filter = filterState.productFilter.filter;
                                return Expanded(
                                  child: ListView.builder(
                                    itemCount: currentState.products.length,
                                    itemBuilder: (_, i) {
                                      var product = currentState.products[i];
                                      return Visibility(
                                        visible: filter[i],
                                        child: ListviewProductCard(
                                          product: product,
                                          onProductCardTap: (product) {
                                            Navigator.pushNamed(
                                              context,
                                              BitPosRoutes.productDetail,
                                              arguments: product.id,
                                            ).then(
                                              (value) => productBlocContext
                                                  .read<ProductBloc>()
                                                  .add(const ProductEvent
                                                      .getProducts()),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                );
                              });
                        },
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
        ),
      ),
    );
  }
}
