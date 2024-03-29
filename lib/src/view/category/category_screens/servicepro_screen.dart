import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';
import 'package:ignition_lab4/src/widget/widget_custom_buttton.dart';
import 'package:ignition_lab4/src/widget/widget_text.dart';
import 'package:ignition_lab4/src/widget/widget_textfild.dart';

class ServiceProScreen extends StatelessWidget {
  const ServiceProScreen({super.key});

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
    List<String> value = ['Yes', 'NO'];
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: height * 0.1),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  hint: 'Email',
                  hintColor: Colors.white,
                ),
                customText(
                    text: 'Are you a part of organisation?',
                    textcolor: Colors.white,
                    textweight: FontWeight.w600,
                    fontSize: 16),
                SizedBox(
                  height: 15,
                ),
                YesNoRadioGroup(),
                CustomTextField(
                    onChanged: (p0) {},
                    Textcolor: Colors.white,
                    fontWeight: FontWeight.w400,
                    hint: 'Organization Name',
                    hintColor: Colors.white),
                CustomTextField(
                    onChanged: (p0) {},
                    Textcolor: Colors.white,
                    fontWeight: FontWeight.w400,
                    hint: 'Role/Desgination',
                    hintColor: Colors.white),
                const SizedBox(
                  height: 10,
                ),
                customText(
                    text: 'What Kind of service will you provide to users ?',
                    textcolor: Colors.white,
                    textweight: FontWeight.w600,
                    fontSize: 16),
                customdropdown(startupIndustry, 'Select your service',
                    FontWeight.w400, 16),
                const SizedBox(
                  height: 15,
                ),
                customText(
                    text: 'Do u have work experince ?',
                    textcolor: Colors.white,
                    textweight: FontWeight.w600,
                    fontSize: 16),
                const SizedBox(
                  height: 10,
                ),
                YesNoRadioGroup(),
                const SizedBox(
                  height: 15,
                ),
                customText(
                    text: 'Task Count',
                    textcolor: Colors.white,
                    textweight: FontWeight.w600,
                    fontSize: 16),
                customdropdown(startupIndustry, '20+', FontWeight.w400, 16),
                const SizedBox(
                  height: 10,
                ),
                cureentteam(height, width, startupages),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                    height: height * 0.07,
                    radius: 14,
                    width: width,
                    color: Colors.purple,
                    widget: customText(
                        text: 'Save',
                        textcolor: Colors.white,
                        textweight: FontWeight.w500,
                        fontSize: 20))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column cureentteam(
    double height,
    double width,
    List<String> startupages,
  ) {
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
        customdropdown(startupages, '20+', FontWeight.w400, 16),
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

  DropdownButton<String> customdropdown(
      List<String> items, String text, FontWeight fontWeight, double size) {
    return DropdownButton(
      isExpanded: true,
      hint: customText(
          text: text,
          textcolor: Colors.white,
          textweight: fontWeight,
          fontSize: size),
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
            text: 'Service Provider',
            textcolor: Colors.white,
            textweight: FontWeight.w500,
            fontSize: 20),
      ],
    );
  }
}

class YesNoRadioGroup extends StatefulWidget {
  @override
  _YesNoRadioGroupState createState() => _YesNoRadioGroupState();
}

class _YesNoRadioGroupState extends State<YesNoRadioGroup> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          height: 24,
          width: 24,
          child: Radio<String>(
            value: 'Yes',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
          ),
        ),
        customText(
            text: 'Yes',
            textcolor: Colors.white,
            textweight: FontWeight.w400,
            fontSize: 14),
        SizedBox(
          width: 30,
        ),
        SizedBox(
          height: 24,
          width: 24,
          child: Radio<String>(
            value: 'No',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
          ),
        ),
        customText(
            text: 'No',
            textcolor: Colors.white,
            textweight: FontWeight.w400,
            fontSize: 14),
      ],
    );
  }
}
