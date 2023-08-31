import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/screens/home/components/section_title.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'popular_products.dart';
import 'product_card.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          HomeHeader(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          DiscountBanner(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Categories(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          SpecialOffers(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),

          PopularProducts(),

          SizedBox(height: getProportionateScreenHeight(30),)

        ],
      ),
    ));
  }
}




