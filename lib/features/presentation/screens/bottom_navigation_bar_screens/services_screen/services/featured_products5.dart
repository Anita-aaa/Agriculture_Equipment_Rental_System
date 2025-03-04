import 'package:flutter/material.dart';

class FeaturedProducts5 extends StatelessWidget {
  const FeaturedProducts5({
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
              '🪴 AI Crop disease solution',
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
