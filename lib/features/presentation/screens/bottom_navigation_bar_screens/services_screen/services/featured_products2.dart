import 'package:flutter/material.dart';

class FeaturedProducts2 extends StatelessWidget {
  const FeaturedProducts2({
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
              '🪴 Seeds',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),

        ],
      ),
    );
  }
}
