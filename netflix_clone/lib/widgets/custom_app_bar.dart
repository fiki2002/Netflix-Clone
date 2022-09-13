import 'package:flutter/material.dart';

import '../assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 24,
      ),
      color: Colors.orange,
      child: Row(
        children: [
          Image.asset(
            Assets.netflixLogo0,
          ),
        ],
      ),
    );
  }
}
