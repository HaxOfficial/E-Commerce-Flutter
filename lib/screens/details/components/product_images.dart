import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
                  (index) => buildSmallPreview(index),
            )
          ],
        ),
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        width: getProportionateScreenWidth(48),
        height: getProportionateScreenHeight(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: selectImage == index ? kPrimaryColor : Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}