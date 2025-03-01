import 'package:dwellio_admin/features/propertie_table/propertie_table.dart';
import 'package:flutter/material.dart';

class PropertieSale extends StatelessWidget {
  const PropertieSale({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> saleProperties = [
      {
        "name": "Greenwood Estate",
        "type": "Apartment",
        "area": "Mumbai",
        "owner": "Ramesh Kumar",
        "contact": "9876543210",
        "price": "15,000,000",
        "rooms": "3",
        "status": "Sold"
      },
      {
        "name": "Oceanview Residency",
        "type": "Penthouse",
        "area": "Goa",
        "owner": "Priya Sharma",
        "contact": "8765432109",
        "price": "25,000,000",
        "rooms": "4",
        "status": "Pending"
      },
      {
        "name": "Mountain Heights",
        "type": "Villa",
        "area": "Shimla",
        "owner": "Vikram Singh",
        "contact": "7654321098",
        "price": "30,000,000",
        "rooms": "6",
        "status": "Sold"
      },
    ];

    return PropertyTable(
      title: "Sale Properties",
      properties: saleProperties,
    );
  }
}
