import 'package:bit_pos/presentation/widget/product_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/product/product_bloc.dart';
import '../../application/bloc/product_filter/product_filter_bloc.dart';
import '../../domain/product/product_filter.dart';
import '../../injection.dart';
import '../core/string_extension.dart';
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

class CategoryChip extends StatefulWidget {
  final ProductFilter productFilter;
  final Function(String)? onCategorySelected;

  const CategoryChip({
    Key? key,
    required this.productFilter,
    this.onCategorySelected,
  }) : super(key: key);

  @override
  State<CategoryChip> createState() => _CategoryChipState();
}

class _CategoryChipState extends State<CategoryChip> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var categories = widget.productFilter.categoryMap.keys.toList();
    var counts = widget.productFilter.categoryMap.values.toList();

    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (ctx, _) => const SizedBox(width: 8),
      itemBuilder: (context, index) {
        return ChoiceChip(
          pressElevation: 0,
          selectedColor: Theme.of(context).colorScheme.primary,
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.5),
          labelStyle: const TextStyle(color: Colors.white),
          label:
              Text('${categories[index].toCapitalized()} (${counts[index]})'),
          selected: _selectedIndex == index,
          onSelected: (newVal) {
            setState(() {
              _selectedIndex = index;
            });
            if (widget.onCategorySelected != null) {
              widget.onCategorySelected!(categories[index]);
            }
          },
        );
      },
    );
  }
}
