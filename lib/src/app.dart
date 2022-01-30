import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uno/uno.dart';
import 'package:value_notifier/src/products/services/product_service.dart';
import 'package:value_notifier/src/products/stores/product_store.dart';
import 'package:value_notifier/src/views/productpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => Uno()),
        Provider(create: (context) => ProductService(context.read())),
        ChangeNotifierProvider(
            create: (context) => ProductStore(context.read())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductPage(),
      ),
    );
  }
}
