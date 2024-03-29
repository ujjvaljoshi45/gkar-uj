import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';
import 'package:ignition_lab4/src/widget/widget_custom_buttton.dart';
import 'package:ignition_lab4/src/widget/widget_text.dart';
import 'package:ignition_lab4/src/widget/widget_textfild.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    List<String> startupIndustry = [
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    List<String> StartupStage = [
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    List<String> Priority = [
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    List<String> startupages = [
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: height * 0.1),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                toptext(),
                CustomTextField(
                  onChanged: (p0) {},
                  Textcolor: Colors.white,
                  fontWeight: FontWeight.w400,
                  hint: 'Name',
                  hintColor: Colors.white,
                ),
                CustomTextField(
                  onChanged: (p0) {},
                  Textcolor: Colors.white,
                  fontWeight: FontWeight.w400,
                  hint: 'Startup Email',
                  hintColor: Colors.white,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: customdropdown(startupIndustry, 'Startup Industry')),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: customdropdown(StartupStage, 'Startup Stage')),
                Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: customdropdown(Priority, 'Priority')),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                        text: 'Startup Age',
                        textcolor: Colors.white,
                        textweight: FontWeight.w400,
                        fontSize: 16),
                    startupage(width),
                    cureentteam(height, width, startupages),
                    CustomTextField(
                        onChanged: (p0) {},
                        Textcolor: Colors.white,
                        fontWeight: FontWeight.w400,
                        hint: 'This Profile Manage by',
                        hintColor: Colors.white),
                    CustomButton(
                      height: height * 0.07,
                      radius: 12,
                      width: width,
                      color: Colors.purple,
                      widget: customText(
                        text: 'Save',
                        textcolor: Colors.white,
                        textweight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column cureentteam(double height, double width, List<String> startupages) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText(
                text: 'Current Team Size',
                textcolor: Colors.white,
                textweight: FontWeight.w400,
                fontSize: 16),
            Container(
              alignment: Alignment.center,
              height: height * 0.03,
              width: width * 0.23,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: customText(
                  text: 'BUILD A TEAM',
                  textcolor: Colors.black,
                  textweight: FontWeight.w500,
                  fontSize: 10),
            )
          ],
        ),
        customdropdown(startupages, '1-20')
      ],
    );
  }

  Row startupage(double width) {
    return Row(
      children: [
        SizedBox(
          width: width * 0.4,
          child: CustomTextField(
              onChanged: (p0) {},
              Textcolor: Colors.white,
              fontWeight: FontWeight.w400,
              hint: 'Year',
              hintColor: Colors.grey),
        ),
        const Spacer(),
        SizedBox(
          width: width * 0.4,
          child: CustomTextField(
              onChanged: (p0) {},
              Textcolor: Colors.white,
              fontWeight: FontWeight.w400,
              hint: 'Months',
              hintColor: Colors.grey),
        )
      ],
    );
  }

  DropdownButton<String> customdropdown(List<String> items, String text) {
    return DropdownButton(
      isExpanded: true,
      hint: customText(
          text: text,
          textcolor: Colors.white,
          textweight: FontWeight.w400,
          fontSize: 16),
      dropdownColor: backgroundColor,
      // Down Arrow Icon
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.white,
      ),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: customText(
              text: items,
              textcolor: Colors.white,
              textweight: FontWeight.w400,
              fontSize: 16),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {},
    );
  }

  Row toptext() {
    return Row(
      children: [
        customText(
            text: 'Category',
            textcolor: Colors.white,
            textweight: FontWeight.w400,
            fontSize: 20),
        const SizedBox(
          height: 20,
          child: VerticalDivider(
            thickness: 3,
          ),
        ),
        customText(
            text: 'Startup',
            textcolor: Colors.white,
            textweight: FontWeight.w500,
            fontSize: 20),
      ],
    );
  }
}
