import 'package:data_table_2/data_table_2.dart';
import 'package:dwellio_admin/common_widget/custom_button.dart';
import 'package:dwellio_admin/common_widget/custom_search.dart';
import 'package:dwellio_admin/features/employ/add_employ.dart';
import 'package:dwellio_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';

class EmployScreen extends StatelessWidget {
  const EmployScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Material(
            borderRadius: BorderRadius.circular(10),
            color: secondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text('Employee',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 300,
                    child: CustomSearch(
                      onSearch: (p0) {},
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    inverse: true,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AddEmploy(),
                      );
                    },
                    label: 'Add Employee',
                    iconData: Icons.add,
                  )
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
                      color: Colors.black12,
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: DataTable2(
                  columns: const [
                    DataColumn(label: Text('Profile')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Email')),
                    DataColumn(label: Text('Phone')),
                    DataColumn(
                        label: Text(
                          'details',
                        ),
                        numeric: true),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        const DataCell(CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/james.jpg'),
                        )),
                        const DataCell(Text(
                          'John',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        const DataCell(
                          Text('john@123.com'),
                        ),
                        const DataCell(Text('1234567890')),
                        DataCell(TextButton(
                            onPressed: () {},
                            child: const Text('View Details'))),
                      ],
                    ),
                    DataRow(
                      cells: [
                        const DataCell(CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/sarah.jpg'),
                        )),
                        const DataCell(Text(
                          'Jane',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        const DataCell(
                          Text('jane@123.com'),
                        ),
                        const DataCell(Text('9876543210')),
                        DataCell(TextButton(
                            onPressed: () {},
                            child: const Text('View Details'))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
