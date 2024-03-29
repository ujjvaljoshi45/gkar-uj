import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/constant/image_string.dart';

class CommunityTitle extends StatelessWidget {
  const CommunityTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(
            left: 10.0, right: 10.0, top: 8.0, bottom: 18.0),
        decoration: BoxDecoration(
            color: Colors.white10,
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    child: Image.asset(ImageString.circularAvatar),
                  ),
                ),
                const Text(
                  'Name',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                const Spacer(),
                TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Join',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ))
              ],
            ),
            const Text(
              'Lorem ipsum dolor sit amet, cu nonumy mandamus quo, cu cum consulatu persecuti, ignota timeam ex vix.',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
