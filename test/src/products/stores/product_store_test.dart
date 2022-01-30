import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:value_notifier/src/products/services/product_service.dart';
import 'package:value_notifier/src/products/states/product_state.dart';
import 'package:value_notifier/src/products/stores/product_store.dart';

class ProductServiceMock extends Mock implements ProductService {}

void main() {
  final service = ProductServiceMock();
  final store = ProductStore(service);
  test('deve alterar estado para sucesso', () async {
    when(() => service.fetchProducts()).thenThrow(Exception('Error'));

    await store.fetchProducts();
    expect(store.value, isA<ErrorProductState>);
  });
}
