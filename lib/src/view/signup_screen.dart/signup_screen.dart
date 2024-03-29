import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignition_lab4/src/view/core/constant/image_string.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';
import 'package:ignition_lab4/src/view/login_screen/login_screen.dart';
import 'package:ignition_lab4/src/widget/widget_custom_buttton.dart';
import 'package:ignition_lab4/src/widget/widget_textfild.dart';

import '../../widget/widget_text.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  height: 20,
                ),
                customText(
                  fontSize: 32,
                  text: 'Register',
                  textcolor: Colors.white,
                  textweight: FontWeight.w600,
                ),
                CustomTextField(
                  Textcolor: Colors.white,
                  fontWeight: FontWeight.w400,
                  hint: 'Full Name',
                  hintColor: Colors.white,
                  onChanged: (p0) {},
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
                CustomTextField(
                  Textcolor: Colors.white,
                  fontWeight: FontWeight.w400,
                  hint: 'Confirm Password',
                  hintColor: Colors.white,
                  onChanged: (p0) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
                  child: CustomButton(
                    height: 59,
                    radius: 14,
                    width: double.infinity,
                    color: buttonbckcolour,
                    widget: Text(
                      'SignUp',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black),
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
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      )),
                      child: Text(
                        'Login',
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
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white)),
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 0.4,
          ),
        ),
      ],
    );
  }
}
