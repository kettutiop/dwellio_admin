import 'package:dwellio_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() ontap;
  final bool isSelected;

  const CustomDrawerItem({
    super.key,
    required this.title,
    required this.icon,
    required this.ontap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: secondaryColor,
      child: InkWell(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              Container(
                width: 4,
                height: 24,
                decoration: BoxDecoration(
                  color: isSelected ? primaryColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(width: 10),
              Icon(
                icon,
                size: 24,
                color: isSelected ? primaryColor : iconColor,
              ),
              const SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                    color: isSelected ? primaryColor : iconColor, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
