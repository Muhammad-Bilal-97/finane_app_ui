import 'package:finane_app_ui/widgets/action_section.dart';
import 'package:finane_app_ui/widgets/contact_section.dart';
import 'package:finane_app_ui/widgets/top_section.dart';
import 'package:finane_app_ui/widgets/transaction_section.dart';
import 'package:flutter/material.dart';
import 'package:finane_app_ui/colors.dart' as color;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.Colors.backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: color.Colors.acccentColor,
        unselectedItemColor: color.Colors.disableColor,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Report"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Stock"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "Cards"),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            ContactSection(),
            SizedBox(height: 20),
            ActionSection(),
            SizedBox(height: 20),
            TransactionSection(),
          ],
        ),
      )),
    );
  }
}
