import 'package:uno/uno.dart';
import 'package:value_notifier/src/products/models/product_model.dart';
import 'dart:async';

class ProductService {
  final Uno uno;
  final url = 'http://10.0.2.2:3031/products';

  ProductService(this.uno);

  Future<List<ProductModel>> fetchProducts() async {
    final response = await uno.get(url);
    final list = response.data as List;

    // final List<ProductModel> products = list.map((e) => ProductModel.fromMap(e)).toList();
    final List<ProductModel> products =
        list.map((json) => ProductModel.fromMap(json)).toList();
    return products;
  }
}
