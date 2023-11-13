import 'package:flutter/material.dart';

class SizeTitles extends StatelessWidget {
  const SizeTitles({super.key, required this.size, required this.constraints});

  final Size size;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Windows size: ${size.width} x ${size.height}',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        Text(
          'Parent widget size: ${constraints.maxWidth} x ${constraints.maxHeight}',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
