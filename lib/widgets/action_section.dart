import 'package:finane_app_ui/mytextstyle.dart';
import 'package:flutter/material.dart';
import 'package:finane_app_ui/colors.dart' as color;

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActionItem(
            title: "Add Money",
            iconData: Icons.add,
            color: color.Colors.acccentColor,
          ),
          ActionItem(
            title: "Send Money",
            iconData: Icons.credit_card_outlined,
            color: color.Colors.orangeColor,
          ),
          ActionItem(
            title: "More",
            iconData: Icons.dashboard_outlined,
            color: color.Colors.disableColor,
          ),
        ],
      ),
    );
  }
}

class ActionItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color color;

  const ActionItem({
    super.key,
    required this.title,
    required this.iconData,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            iconData,
            color: color,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: MyTextStyle.bodyText2,
        ),
      ],
    );
  }
}
