import 'package:finane_app_ui/mytextstyle.dart';
import 'package:flutter/material.dart';
import 'package:finane_app_ui/colors.dart' as color;

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: color.Colors.backgroundColor,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          height: 250,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          height: 150,
          decoration: BoxDecoration(
            color: color.Colors.acccentColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  "assets/images/man.png",
                  width: 40,
                  height: 40,
                  alignment: Alignment.topLeft,
                ),
              ),
              Image.asset(
                "assets/images/search.png",
                width: 25,
                height: 25,
                color: Colors.white,
              ),
              const SizedBox(width: 20),
              Image.asset(
                "assets/images/bell.png",
                width: 25,
                height: 25,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
          top: 80,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Avaiable Balance', style: MyTextStyle.subTitle1),
                        const Text('\$18,645', style: MyTextStyle.headline1),
                      ],
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: Image.asset("assets/images/usa.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("See More", style: MyTextStyle.subTitle1),
                        const SizedBox(width: 5),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: color.Colors.acccentColor.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 8,
                            color: color.Colors.acccentColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("US Dollar", style: MyTextStyle.subTitle2),
                        Icon(
                          Icons.arrow_drop_down,
                          color: color.Colors.acccentColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
