import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ignition_lab4/src/view/core/constant/image_string.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';

class PostTile extends StatelessWidget {
  const PostTile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: CircleAvatar(
                    child: Image.asset(ImageString.circularAvatar),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12.0, left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'title',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, cu nonumy mandamus quo, cu cum consulatu persecuti, ignota timeam ex vix.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: height * 0.25,
                width: width * 0.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    ImageString.postViewImage,
                  ),
                )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  icon: const Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    '99',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
                TextButton.icon(
                  icon: const Icon(
                    Icons.chat_bubble_outline_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    '45',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
                TextButton.icon(
                  icon: const Icon(
                    FontAwesomeIcons.retweet,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    '3',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
                TextButton.icon(
                  icon: const Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    '3',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const Divider(
              color: Colors.white54,
            )
          ],
        ),
      ),
    );
  }
}
