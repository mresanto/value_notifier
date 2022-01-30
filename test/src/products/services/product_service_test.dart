// @dart=2.9

import 'package:flutter_test/flutter_test.dart';
import 'package:uno/uno.dart';
import 'package:value_notifier/src/products/services/product_service.dart';

void main() {
  final service = ProductService(Uno());
  test('deve pegar todos os produtos', () async {
    final list = await service.fetchProducts();
    // ignore: avoid_print
    print(list);
  });
}
