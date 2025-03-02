import 'package:dwellio_admin/features/propertie_table/propertie_table.dart';
import 'package:flutter/material.dart';

class RentPropertiesScreen extends StatelessWidget {
  const RentPropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> rentProperties = [
      {
        "name": "Manas Mansil",
        "type": "Apartment",
        "area": "Chennai",
        "owner": "Shankar",
        "contact": "3448569752",
        "price": "10,000,000",
        "rooms": "4",
        "status": "Rented"
      },
      {
        "name": "Vamana Tharavad",
        "type": "Villa",
        "area": "Bangalore",
        "owner": "Soman Pilla",
        "contact": "9568755958",
        "price": "18,000,000",
        "rooms": "5",
        "status": "Pending"
      },
      {
        "name": "Lake View Apartment",
        "type": "Apartment",
        "area": "Hyderabad",
        "owner": "Rajesh Khanna",
        "contact": "8547126935",
        "price": "15,000,000",
        "rooms": "3",
        "status": "Rented"
      },
    ];

    return PropertyTable(
      title: "Rent Properties",
      properties: rentProperties,
      isRentProperty: true, // Ensure this is set correctly
    );
  }
}
