import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/product/product_bloc.dart';
import '../../domain/product/product.dart';
import '../core/currency_formatter.dart';
import '../routes.dart';
import '../widget/base64_image.dart';

class ProductDetail extends StatelessWidget {
  final int productId;

  const ProductDetail({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(ProductEvent.getProduct(productId));
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          productLoaded: (cState) {
            Product product = cState.product;
            return Scaffold(
              appBar: AppBar(
                actions: [
                  PopupMenuButton(
                    offset: Offset.fromDirection(3.0, 3.0),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          onTap: () {
                            _editProduct(context, product);
                          },
                          child: Row(
                            children: const [
                              Icon(
                                Icons.edit,
                                color: Colors.black,
                              ),
                              Text('Edit Product'),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            _deleteProduct(context, product);
                          },
                          child: Row(
                            children: const [
                              Icon(
                                Icons.delete,
                                color: Colors.black,
                              ),
                              Text('Delete Product'),
                            ],
                          ),
                        ),
                      ];
                    },
                  )
                ],
                elevation: 0,
              ),
              body: ListView(
                children: [
                  Container(
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        Center(
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: product.image == ''
                                    ? Container(
                                        height: 120,
                                        width: 120,
                                        color: Colors.grey[200],
                                      )
                                    : Base64Image(
                                        base64String: product.image,
                                        width: 120,
                                        height: 120,
                                      ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                product.name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                              Text(
                                product.category,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey[200],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                CurrencyFormatter.format(product.price),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<dynamic> _editProduct(BuildContext context, Product product) {
    return Future.delayed(
      const Duration(seconds: 0),
      () => Navigator.of(context).pushNamed(
        BitPosRoutes.addProduct,
        arguments: product,
      ),
    );
  }

  Future<dynamic> _deleteProduct(BuildContext context, Product product) {
    return Future.delayed(
      const Duration(seconds: 0),
      () => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'Delete Product',
          ),
          content: const Text('This product will delete permanently'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                context
                    .read<ProductBloc>()
                    .add(ProductEvent.deleteProduct(product.id!));
                Navigator.of(context)
                  ..pop()
                  ..pop();
              },
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
