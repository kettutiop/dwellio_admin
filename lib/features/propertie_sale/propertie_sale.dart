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
        "rooms": "3"
      },
      {
        "name": "Oceanview Residency",
        "type": "Penthouse",
        "area": "Goa",
        "owner": "Priya Sharma",
        "contact": "8765432109",
        "price": "25,000,000",
        "rooms": "4"
      },
    ];

    return PropertyTable(title: "Sale Properties", properties: saleProperties);
  }
}
