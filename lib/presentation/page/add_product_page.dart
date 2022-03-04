import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/product/product_bloc.dart';
import '../../domain/product/product.dart';
import '../core/currency_formatter.dart';
import '../widget/widgets.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _productNameInput = TextEditingController();
    TextEditingController _categoryInput = TextEditingController();
    TextEditingController _priceInput = TextEditingController();
    TextEditingController _barcodeInput = TextEditingController();

    String? _base64imageselected;
    final _form = GlobalKey<FormState>();

    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            TextEditingController().clear();
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Add Product'),
              elevation: 0,
              actions: [
                IconButton(
                  onPressed: () {
                    final isValid = _form.currentState!.validate();
                    if (!isValid) return;
                    var product = Product(
                      id: 0,
                      name: _productNameInput.text,
                      price: CurrencyFormatter.parse(_priceInput.text),
                      image: _base64imageselected ?? '',
                      category: _categoryInput.text,
                    );
                    context
                        .read<ProductBloc>()
                        .add(ProductEvent.createProduct(product));
                    Navigator.pop(context);
                  },
                  icon: const Text(
                    'Save',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _form,
                  child: Column(
                    children: [
                      ImageUploadWidget(
                        onImageUpload: (imgStr) {
                          _base64imageselected = imgStr;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _productNameInput,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Product name must be filled';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Product Name',
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _barcodeInput,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Barcode (Optional)',
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          border: const UnderlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.crop_free),
                            onPressed: () {
                              debugPrint('Scan Barcode Button Pressed');
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _priceInput,
                        keyboardType: TextInputType.number,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Price must be filled';
                          }
                          return null;
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          CurrencyInputFormatter(),
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Price',
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          // border: const UnderlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _categoryInput,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Category must be filled';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Category',
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}