import 'package:dwellio_admin/features/dashboard/dashboard_card.dart';
import 'package:dwellio_admin/features/propertie_table/propertie_table.dart';
import 'package:dwellio_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> recentlyRentedProperties = [
      {
        'name': 'Property A',
        'type': 'Apartment',
        'area': '1000 sqft',
        'owner': 'John Doe',
        'contact': '123-456-7890',
        'price': '\$1200',
        'rooms': '3',
        'status': 'Rented',
      },
      {
        'name': 'Property B',
        'type': 'House',
        'area': '1500 sqft',
        'owner': 'Jane Smith',
        'contact': '987-654-3210',
        'price': '\$1500',
        'rooms': '4',
        'status': 'Rented',
      },
    ];

    final List<Map<String, String>> recentlySoldProperties = [
      {
        'name': 'Property C',
        'type': 'Villa',
        'area': '2000 sqft',
        'owner': 'Alice Johnson',
        'contact': '555-555-5555',
        'price': '\$300,000',
        'rooms': '5',
        'status': 'Sold',
      },
      {
        'name': 'Property D',
        'type': 'Condo',
        'area': '1200 sqft',
        'owner': 'Bob Brown',
        'contact': '444-444-4444',
        'price': '\$250,000',
        'rooms': '3',
        'status': 'Sold',
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Wrap(
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.start,
              runSpacing: 20,
              spacing: 20,
              children: [
                DashboardCard(
                  label: 'Sale Properties',
                  iconbgcolor: primaryColor,
                  value: '565',
                  icon: Icons.business,
                ),
                DashboardCard(
                  label: 'Rent Properties',
                  iconbgcolor: primaryColor,
                  value: '565',
                  icon: Icons.blinds_closed_outlined,
                ),
                DashboardCard(
                  label: 'Total Purchase',
                  iconbgcolor: primaryColor,
                  value: '565',
                  icon: Icons.attach_money,
                ),
                DashboardCard(
                  label: 'Total Revenue',
                  iconbgcolor: primaryColor,
                  value: '565',
                  icon: Icons.attach_money,
                ),
              ],
            ),
            const SizedBox(height: 40),
            // Recently Rented Properties Section
            PropertyTable(
              title: 'Recently Rented Properties',
              properties: recentlyRentedProperties,
            ),
            const SizedBox(height: 40),
            // Recently Sold Properties Section
            PropertyTable(
              title: 'Recently Sold Properties',
              properties: recentlySoldProperties,
            ),
          ],
        ),
      ),
    );
  }
}
