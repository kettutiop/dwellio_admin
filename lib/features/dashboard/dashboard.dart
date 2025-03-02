import 'package:dwellio_admin/features/dashboard/dashboard_card.dart';
import 'package:dwellio_admin/features/propertie_table/propertie_table.dart';
import 'package:dwellio_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the table
    final List<Map<String, String>> properties = [
      {
        'name': 'Property A',
        'type': 'Apartment',
        'area': '1000 sqft',
        'owner': 'John Doe',
        'contact': '123-456-7890',
        'price': '\$200,000',
        'rooms': '3',
        'status': 'Rented',
      },
      {
        'name': 'Property B',
        'type': 'Villa',
        'area': '2000 sqft',
        'owner': 'Jane Smith',
        'contact': '987-654-3210',
        'price': '\$500,000',
        'rooms': '5',
        'status': 'Sold',
      },
      {
        'name': 'Property C',
        'type': 'Townhouse',
        'area': '1500 sqft',
        'owner': 'Alice Johnson',
        'contact': '555-123-4567',
        'price': '\$300,000',
        'rooms': '4',
        'status': 'Pending',
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Dashboard Cards
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

            const SizedBox(height: 40), // Spacing between cards and table

            // Recently Rented/Sold Properties Table
            PropertyTable(
              title: 'Recently Rented/Sold Properties',
              properties: properties,
              isRentProperty:
                  true, // Set to false if you want to show sold properties
              showSegmentedControl: false, // Hide the segmented control
            ),
          ],
        ),
      ),
    );
  }
}
