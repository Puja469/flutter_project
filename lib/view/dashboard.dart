import 'package:my_first_project/component/dashboard_button.dart';
import 'package:my_first_project/view/area_of_circle.dart';
import 'package:my_first_project/view/arithmetic_view.dart';
import 'package:my_first_project/view/simple_interest.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Dashboard",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 115),
            DashboardButton(
              label: "Arithmetic",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArithmeticView(),
                  ),
                );
              },
            ),
            const SizedBox(height: 35),
            DashboardButton(
              label: "Simple Interest",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleInterest(),
                  ),
                );
              },
            ),
            const SizedBox(height: 35),
            DashboardButton(
              label: "Area of Circle",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AreaOfCircle(),
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}