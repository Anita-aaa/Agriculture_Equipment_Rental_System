import 'package:agriculture_equipment_rental_system/features/data/products.dart';
import 'package:agriculture_equipment_rental_system/features/presentation/screens/bottom_navigation_bar_screens/explore_screen/widgets/product_card.dart';
import 'package:flutter/material.dart';

class FeaturedProductGridView3 extends StatelessWidget {
  const FeaturedProductGridView3({
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
