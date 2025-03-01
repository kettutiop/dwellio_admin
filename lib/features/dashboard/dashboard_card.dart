import 'package:dwellio_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String label;
  final Color iconbgcolor;
  final String value;
  final IconData icon;
  const DashboardCard({
    super.key,
    required this.label,
    required this.iconbgcolor,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: outlineColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            CircleAvatar(
              backgroundColor: iconbgcolor,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
