import 'package:finane_app_ui/models/contacts.dart';
import 'package:finane_app_ui/mytextstyle.dart';
import 'package:flutter/material.dart';
import 'package:finane_app_ui/colors.dart' as color;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.Colors.acccentColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "assets/images/search.png",
              color: Colors.white,
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(width: 15),
          Container(
            height: 40,
            width: 2,
            color: color.Colors.disableColor.withOpacity(0.3),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: contacts().length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          contacts()[index].imageLink,
                          fit: BoxFit.cover,
                          width: 40,
                          height: 40,
                        ),
                      ),
                      Text(
                        contacts()[index].name,
                        style: MyTextStyle.bodyText2,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
