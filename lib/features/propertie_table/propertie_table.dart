import 'package:data_table_2/data_table_2.dart';
import 'package:dwellio_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PropertyTable extends StatelessWidget {
  final String title;
  final List<Map<String, String>> properties;

  const PropertyTable(
      {super.key, required this.title, required this.properties});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Material(
            borderRadius: BorderRadius.circular(10),
            color: secondaryColor, // Change as per theme
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 8, spreadRadius: 2),
                  ],
                ),
                child: DataTable2(
                  columns: const [
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Type')),
                    DataColumn(label: Text('Area')),
                    DataColumn(label: Text('Owner')),
                    DataColumn(label: Text('Contact No.')),
                    DataColumn(label: Text('Price')),
                    DataColumn(label: Text('Rooms')),
                    DataColumn(label: Text('Details'), numeric: true),
                  ],
                  rows: properties.map((property) {
                    return DataRow(cells: [
                      DataCell(Text(property['name']!,
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text(property['type']!)),
                      DataCell(Text(property['area']!)),
                      DataCell(Text(property['owner']!)),
                      DataCell(Text(property['contact']!)),
                      DataCell(Text(property['price']!)),
                      DataCell(Text(property['rooms']!)),
                      DataCell(TextButton(
                          onPressed: () {}, child: const Text('View Details'))),
                    ]);
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
