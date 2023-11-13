import 'package:flutter/material.dart';

class OrientationPage extends StatelessWidget {
  const OrientationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final bool isPortrait = orientation == Orientation.portrait;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isPortrait ? 'Portrait' : 'Landscape',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Icon(
              isPortrait ? Icons.crop_portrait : Icons.crop_landscape,
              size: 100,
            )
          ],
        );
      },
    );
  }
}
