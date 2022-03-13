import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/cart/cart_bloc.dart';
import '../../application/bloc/product/product_bloc.dart';
import '../../application/bloc/product_filter/product_filter_bloc.dart';
import '../../domain/product/product_filter.dart';
import '../../injection.dart';
import '../widget/cart_panel.dart';
import '../widget/widgets.dart';

class PointOfSalePage extends StatelessWidget {
  const PointOfSalePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchInput = TextEditingController();
    var productBloc = context.read<ProductBloc>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (context) =>
              getIt<CartBloc>()..add(const CartEvent.started()),
        ),
        BlocProvider<ProductFilterBloc>(
          create: (context) => getIt<ProductFilterBloc>(),
        ),
      ],
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
        body: Column(
          children: [
            BlocBuilder<ProductFilterBloc, ProductFilterState>(
              builder: (context, state) {
                return Container(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  color: Theme.of(context).colorScheme.primary,
                  child: TextField(
                    controller: _searchInput,
                    onChanged: (text) {
                      var filterBloc = context.read<ProductFilterBloc>();
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
                      hintText: "Search",
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                );
              },
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Container(),
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
                    var productBlocContext = context;
                    context.read<ProductFilterBloc>().add(
                          ProductFilterEvent.filter(
                            products: currentState.products,
                          ),
                        );
                    return BlocBuilder<ProductFilterBloc, ProductFilterState>(
                      builder: (context, state) {
                        var productFilter = state.mapOrNull(
                          filtered: (filterState) => filterState.productFilter,
                        );
                        return Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 60,
                                child: CategoryChip(
                                  productFilter: productFilter ??
                                      ProductFilter(
                                        products: currentState.products,
                                      ),
                                  onCategorySelected: (category) {
                                    context.read<ProductFilterBloc>().add(
                                          ProductFilterEvent.filter(
                                            category: category,
                                          ),
                                        );
                                  },
                                ),
                              ),
                              Expanded(
                                child: ProductGridView(
                                  products: currentState.products,
                                  productFilter: productFilter?.filter,
                                  blocContext: productBlocContext,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ],
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
