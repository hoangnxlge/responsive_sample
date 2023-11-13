import 'package:flutter/material.dart';

class FlexibleAndExpandedPage extends StatefulWidget {
  const FlexibleAndExpandedPage({super.key});

  @override
  State<FlexibleAndExpandedPage> createState() =>
      _FlexibleAndExpandedPageState();
}

class _FlexibleAndExpandedPageState extends State<FlexibleAndExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(child: ExpandedItem()),
            Expanded(child: ExpandedItem()),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Flexible(
              flex: 2,
              child: FlexibleItem(),
            ),
            Expanded(child: ExpandedItem()),
            Flexible(child: FlexibleItem()),
          ],
        )
      ],
    );
  }
}

class FlexibleItem extends StatelessWidget {
  const FlexibleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(),
      ),
      child: const Text(
        'Flexible',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class ExpandedItem extends StatelessWidget {
  const ExpandedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.teal,
        border: Border.all(),
      ),
      child: Text(
        'Expanded',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}
