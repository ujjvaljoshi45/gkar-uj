import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignition_lab4/src/view/category/category_screen.dart';

import '../../widget/widget_custom_buttton.dart';
import '../../widget/widget_text.dart';
import '../../widget/widget_textfild.dart';
import '../core/constant/image_string.dart';
import '../core/theme/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImageString.small_logo),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                customText(
                  fontSize: 32,
                  text: 'LogIn',
                  textcolor: Colors.white,
                  textweight: FontWeight.w600,
                ),
                CustomTextField(
                  Textcolor: Colors.white,
                  fontWeight: FontWeight.w400,
                  hint: 'Email Address',
                  hintColor: Colors.white,
                  onChanged: (p0) {},
                ),
                CustomTextField(
                  Textcolor: Colors.white,
                  fontWeight: FontWeight.w400,
                  hint: 'Password',
                  hintColor: Colors.white,
                  onChanged: (p0) {},
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                    textwidget(
                        text: ' Remember Me',
                        color: Colors.white,
                        size: 15,
                        fontWeight: FontWeight.w500)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: textwidget(
                        text: 'Forgot Password?',
                        color: Colors.white,
                        size: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CategoryScreeen(),
                  )),
                  child: const CustomButton(
                    height: 59,
                    radius: 14,
                    width: double.infinity,
                    color: buttonbckcolour,
                    widget: textwidget(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      size: 20,
                      text: 'LogIn',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                dividerline(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      height: 50,
                      radius: 14,
                      width: 150,
                      color: Colors.white,
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(ImageString.google),
                          Text(
                            'Google',
                            style: GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    CustomButton(
                      height: 50,
                      radius: 14,
                      width: 150,
                      color: Colors.white,
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(ImageString.linkedin),
                          Text(
                            'Linkedin',
                            style: GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Text(
                        'SignUp',
                        style: GoogleFonts.montserrat(
                            color: textcolour,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
    ;
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

Row dividerline() {
  return Row(
    children: [
      const Expanded(
        child: Divider(
          color: Colors.white,
          thickness: 0.4,
        ),
      ),
      Text('  Or  ',
          style: GoogleFonts.montserrat(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white)),
      const Expanded(
        child: Divider(
          color: Colors.white,
          thickness: 0.4,
        ),
      ),
    ],
  );
}
