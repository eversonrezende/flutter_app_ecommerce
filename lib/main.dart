import 'package:atividade1/routes.dart';
import 'package:atividade1/widgets/product_cache.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<ProductCache>(
      create: (_) => ProductCache(),
      child: MaterialApp(
        onGenerateTitle: (context) => "Ecommerce App",
        initialRoute: RouterGenerator.initialPage,
        onGenerateRoute: RouterGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


