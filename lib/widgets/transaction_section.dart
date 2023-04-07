import 'package:finane_app_ui/models/contacts.dart';
import 'package:finane_app_ui/models/transactions.dart';
import 'package:finane_app_ui/mytextstyle.dart';
import 'package:flutter/material.dart';
import 'package:finane_app_ui/colors.dart' as color;

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Transactions",
                style: MyTextStyle.headline3,
              ),
              Text(
                "See all",
                style: MyTextStyle.subTitle2,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 300,
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: transaction().length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: transaction()[index].color.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          transaction()[index].iconData,
                          color: transaction()[index].color,
                          size: 17,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction()[index].title,
                              style: MyTextStyle.bodyText1,
                            ),
                            Text(
                              transaction()[index].date,
                              style: MyTextStyle.subTitle1,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        transaction()[index].amount,
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
