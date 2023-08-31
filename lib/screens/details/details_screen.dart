import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {

    final ProductDetailsArguments arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        rating: arguments.product.rating,
      ),
      body: Body(product: arguments.product),
    );
  }
}

/// We also need to pass our product to our details screen
/// and we use name route so we need to create a arguments class

class ProductDetailsArguments {
  late final Product product;

  ProductDetailsArguments({required this.product});
}
