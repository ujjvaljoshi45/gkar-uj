import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';

class CategoryScreeen extends StatefulWidget {
  const CategoryScreeen({super.key});

  @override
  State<CategoryScreeen> createState() => _CategoryScreeenState();
}

class _CategoryScreeenState extends State<CategoryScreeen> {
  @override
  Widget build(BuildContext context) {
    print('code run');

    final List<String> categorytext = [
      'Startup',
      'Expert',
      'Service Provider',
      'Investor',
      'Instiute',
      'Incubation',
      'Founder',
      'Employee',
      'Student',
      'None'
    ];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: backgroundColor,
              centerTitle: true,
              title: textwidget(
                  text: 'Choose Your Category',
                  color: Colors.white,
                  size: 24,
                  fontWeight: FontWeight.w600),
            ),
            SliverList.builder(
                itemCount: categorytext.length,
                itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: backgroundColor,
                          border: Border.all(color: Colors.white)),
                      child: ListTile(
                        onTap: () {
                          setState(() {});
                        },
                        title: textwidget(
                            text: categorytext[index],
                            color: Colors.white,
                            size: 20,
                            fontWeight: FontWeight.w400),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}

class textwidget extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double size;
  const textwidget(
      {super.key,
      required this.text,
      required this.color,
      required this.size,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
          fontWeight: fontWeight, fontSize: size, color: color),
    );
  }
}
