import 'package:data_table_2/data_table_2.dart';
import 'package:dwellio_admin/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PropertyTable extends StatefulWidget {
  final String title;
  final List<Map<String, String>> properties;
  final bool isRentProperty;
  final bool
      showSegmentedControl; // Controls visibility of the segmented control

  const PropertyTable({
    super.key,
    required this.title,
    required this.properties,
    this.isRentProperty = false,
    this.showSegmentedControl = true, // Default to true
  });

  @override
  State<PropertyTable> createState() => _PropertyTableState();
}

class _PropertyTableState extends State<PropertyTable> {
  int _selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // Table Heading
          Material(
            borderRadius: BorderRadius.circular(10),
            color: secondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Conditionally show the CupertinoSegmentedControl
                  if (widget.showSegmentedControl)
                    SizedBox(
                      width: 300,
                      child: CupertinoSegmentedControl<int>(
                        children: {
                          0: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text('All'),
                          ),
                          1: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child:
                                Text(widget.isRentProperty ? 'Rented' : 'Sold'),
                          ),
                          2: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text('Pending'),
                          ),
                        },
                        onValueChanged: (int value) {
                          setState(() {
                            _selectedSegment = value;
                          });
                        },
                        groupValue: _selectedSegment,
                        borderColor: Colors.grey.shade400,
                        selectedColor: primaryColor,
                        unselectedColor: Colors.white,
                        padding: const EdgeInsets.all(4),
                      ),
                    ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Property Table
          SizedBox(
            height: 400, // Fixed height for the table
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
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Type')),
                    DataColumn(label: Text('Area')),
                    DataColumn(label: Text('Owner')),
                    DataColumn(label: Text('Contact No.')),
                    DataColumn(label: Text('Price')),
                    DataColumn(label: Text('Rooms')),
                    DataColumn2(label: Text('Status'), size: ColumnSize.M),
                    DataColumn(label: Text('Details'), numeric: true),
                  ],
                  rows: _filteredProperties.map((property) {
                    final status = property['status'] ?? 'Pending';
                    final Color chipColor =
                        status == (widget.isRentProperty ? 'Rented' : 'Sold')
                            ? Colors.green.shade100
                            : Colors.orange.shade100;
                    final Color textColor =
                        status == (widget.isRentProperty ? 'Rented' : 'Sold')
                            ? Colors.green.shade800
                            : Colors.orange.shade800;

                    return DataRow(cells: [
                      DataCell(Text(
                        property['name']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataCell(Text(property['type']!)),
                      DataCell(Text(property['area']!)),
                      DataCell(Text(property['owner']!)),
                      DataCell(Text(property['contact']!)),
                      DataCell(Text(property['price']!)),
                      DataCell(Text(property['rooms']!)),
                      DataCell(
                        Material(
                          color: chipColor,
                          borderRadius: BorderRadius.circular(15),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              status,
                              style: TextStyle(
                                color: textColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      DataCell(TextButton(
                        onPressed: () {},
                        child: const Text('View'),
                      )),
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

  // Filter properties based on the selected segment
  List<Map<String, String>> get _filteredProperties {
    if (!widget.showSegmentedControl || _selectedSegment == 0) {
      return widget.properties;
    } else if (_selectedSegment == 1) {
      return widget.properties.where((property) {
        return property['status'] ==
            (widget.isRentProperty ? 'Rented' : 'Sold');
      }).toList();
    } else {
      return widget.properties.where((property) {
        return property['status'] == 'Pending' || property['status'] == null;
      }).toList();
    }
  }
}
