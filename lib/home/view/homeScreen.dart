import 'package:flutter/material.dart';
import 'package:kfs_admin/home/homescreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.blueGrey,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 2 / 4,
        ),
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return const HomeBodyWidget();
        },
      ),
    );
  }
}
