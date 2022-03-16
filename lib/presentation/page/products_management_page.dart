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

    return BlocProvider(
      create: (context) => getIt<ProductFilterBloc>(),
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
                            },
                            decoration: const InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(Icons.search),
                              ),
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 23, maxHeight: 23),
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
                  orElse: () => Container(
                    color: Colors.amber,
                  ),
                  error: (errorState) {
                    var failure = errorState.failure;
                    debugPrint(failure.runtimeType.toString());
                    return failure.maybeMap(
                      orElse: () =>
                          const ProductErrorWidget(msg: 'Something Wrong !'),
                      noDataFailure: (_) => const ProductErrorWidget(
                        msg: 'No Data',
                        icon: Icon(Icons.description_outlined),
                      ),
                    );
                  },
                  productsLoaded: (currentState) {
                    context.read<ProductFilterBloc>().add(
                          ProductFilterEvent.filter(
                            products: currentState.products,
                          ),
                        );
                    return BlocBuilder<ProductFilterBloc, ProductFilterState>(
                      builder: (context, state) {
                        return state.maybeMap(
                            orElse: () => Container(),
                            filtered: (filterState) {
                              var productFilter = filterState.productFilter;
                              return Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      child: CategoryChip(
                                        productFilter: productFilter,
                                        onCategorySelected: (category) {
                                          context.read<ProductFilterBloc>().add(
                                                ProductFilterEvent.filter(
                                                    category: category),
                                              );
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView.separated(
                                        itemCount: currentState.products.length,
                                        separatorBuilder: (_, i) {
                                          return Visibility(
                                            visible: productFilter.filter[i],
                                            child: const SizedBox(height: 16),
                                          );
                                        },
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        itemBuilder: (_, i) {
                                          var product =
                                              currentState.products[i];
                                          return Visibility(
                                            visible: productFilter.filter[i],
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
                                    ),
                                  ],
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
    );
  }
}
