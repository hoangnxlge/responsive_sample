import 'dart:math';

import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Text(
          'Screen size: ${size.width} x ${size.height}\n'
          'Number of columns: ${size.width ~/ 200}',
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 10),
        Expanded(
          child: GridView.builder(
            itemCount: 100,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: max(
              1,
              size.width ~/ 200,
            )),
            itemBuilder: (context, index) {
              return Card(
                child: Center(child: Text(index.toString())),
              );
            },
          ),
        ),
      ],
    );
  }
}
