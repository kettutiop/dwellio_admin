import 'package:dwellio_admin/features/dashboard/dashboard_card.dart';
import 'package:dwellio_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            runSpacing: 20,
            spacing: 20,
            children: [
              DasboardCard(
                label: 'Sale Properties',
                iconbgcolor: primaryColor,
                value: '565',
                icon: Icons.business,
              ),
              DasboardCard(
                label: 'Rent Properties',
                iconbgcolor: primaryColor,
                value: '565',
                icon: Icons.blinds_closed_outlined,
              ),
              DasboardCard(
                label: 'Total Purchase',
                iconbgcolor: primaryColor,
                value: '565',
                icon: Icons.attach_money,
              ),
              DasboardCard(
                label: 'Total Revenue',
                iconbgcolor: primaryColor,
                value: '565',
                icon: Icons.attach_money,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
