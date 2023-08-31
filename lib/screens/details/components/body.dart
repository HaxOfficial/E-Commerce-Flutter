import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImage(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductionDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedContainer(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth! * 0.15,
                                  right: SizeConfig.screenWidth! * 0.15,
                                top: getProportionateScreenWidth(15),
                                bottom: getProportionateScreenWidth(40)
                              ),
                              child: DefaultButton(
                                text: "Add to Cart",
                                press: () {},
                              ),
                            )
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
