import 'package:flutter/material.dart';

import '../models/models.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({Key? key, required this.featuredContent})
      : super(key: key);
  final Content featuredContent;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
            ),
          ),
        ),
      ],
    );
  }
}
