import 'package:flutter/material.dart';

import 'screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: header(),
      body: const BodyScreen(),
    );
  }

  AppBar header() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, size: 33, color: Colors.black54),
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, size: 33, color: Colors.black54),
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined,
                  size: 33, color: Colors.black54),
            ),
            Positioned(
              right: 0,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white)),
                child: const Center(
                  child: Text(
                    '5',
                    style: TextStyle(height: 1),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
