import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/constant/image_string.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';

class CreateGroup extends StatelessWidget {
  const CreateGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          'New Group',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child:
                    const Image(image: AssetImage(ImageString.circularAvatar)),
              )
            ],
          )
        ],
      ),
    );
  }
}
