import 'package:flutter/material.dart';
import 'package:responsive_sample/features/flexible_and_expanded/flexible_and_expanded_page.dart';
import 'package:responsive_sample/features/layout_builder/layout_builder_page.dart';
import 'package:responsive_sample/features/orientation/orientation_page.dart';

import '../media_query/grid_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: true,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.looks_one),
                label: Text('Flexible & Expanded'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.looks_two),
                label: Text('Media Query'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.looks_3),
                label: Text('Layout Builder'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.looks_4),
                label: Text('Orientation Builder'),
              )
            ],
            selectedIndex: currentIndex,
            onDestinationSelected: (index) {
              setState(() {
                currentIndex = index;
              });
              pageController.jumpToPage(currentIndex);
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Using mouse to resize the app',
                    style: Theme.of(context).textTheme.headlineMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: PageView(
                      controller: pageController,
                      children: const [
                        FlexibleAndExpandedPage(),
                        GridPage(),
                        LayoutBuilderPage(),
                        OrientationPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
