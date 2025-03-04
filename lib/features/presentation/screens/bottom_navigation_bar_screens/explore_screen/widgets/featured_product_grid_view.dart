import 'package:agriculture_equipment_rental_system/features/data/products1.dart';
import 'package:flutter/material.dart';
import 'product_card.dart';

class FeaturedProductGridView extends StatelessWidget {
  const FeaturedProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .66,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ProductCard(
        product: products[index],
      ),
      itemCount: products.length,
    );
  }
}
