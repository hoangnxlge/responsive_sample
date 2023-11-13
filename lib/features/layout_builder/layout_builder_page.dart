import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatefulWidget {
  const LayoutBuilderPage({super.key});

  @override
  State<LayoutBuilderPage> createState() => _LayoutBuilderPageState();
}

class _LayoutBuilderPageState extends State<LayoutBuilderPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Windows size: ${size.width} x ${size.height}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'Parent widget size: ${constraints.maxWidth} x ${constraints.maxHeight}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                shape: constraints.maxWidth < 600
                    ? BoxShape.circle
                    : BoxShape.rectangle,
              ),
              width: 200,
              height: 100,
            ),
          ],
        );
      },
    );
  }
}
