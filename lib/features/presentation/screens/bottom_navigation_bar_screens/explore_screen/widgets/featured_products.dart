import 'package:agriculture_equipment_rental_system/features/presentation/screens/bottom_navigation_bar_screens/services_screen/services_screen.dart';
import 'package:flutter/material.dart';
class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              AppLocalizations.of(context)!.featuredProducts,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServicesScreen()),
              );
            },
            child: Text(
              AppLocalizations.of(context)!.seeAll,
              style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}