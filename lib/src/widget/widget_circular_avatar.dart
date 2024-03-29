import 'package:flutter/material.dart';

import '../view/core/constant/image_string.dart';

class CircularAvatarView extends StatelessWidget {
  const CircularAvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(ImageString.circularAvatar),
        ),
      ),
    );
  }
}
