import 'package:dwellio_admin/common_widget/custom_alert_dialog.dart';
import 'package:dwellio_admin/features/dashboard/dashboard.dart';
import 'package:dwellio_admin/features/employ/employ_screen.dart';
import 'package:dwellio_admin/features/home/custom_drawer_item.dart';
import 'package:dwellio_admin/features/login_page/login_page.dart';
import 'package:dwellio_admin/features/propertie_sale/propertie_sale.dart';
import 'package:dwellio_admin/features/rent_propertie/rent_propertie_screen.dart';
import 'package:dwellio_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this, initialIndex: 0);
    tabController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: secondaryColor,
                  border: Border.all(width: 3, color: outlineColor)),
              width: 255,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dwellio',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    CustomDrawerItem(
                      title: 'Dashboard',
                      icon: Icons.dashboard_rounded,
                      ontap: () {
                        tabController.animateTo(0);
                      },
                      isSelected: tabController.index == 0,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomDrawerItem(
                      isSelected: tabController.index == 1,
                      title: 'Employ',
                      icon: Icons.architecture,
                      ontap: () {
                        tabController.animateTo(1);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomDrawerItem(
                      isSelected: tabController.index == 2,
                      title: 'Rent Properties',
                      icon: Icons.lock_clock_outlined,
                      ontap: () {
                        tabController.animateTo(2);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomDrawerItem(
                      isSelected: tabController.index == 3,
                      title: 'Sale Properties',
                      icon: Icons.category,
                      ontap: () {
                        tabController.animateTo(3);
                      },
                    ),
                    // const SizedBox(
                    //   height: 15,
                    // ),
                    // CustomDrawerItem(
                    //   isSelected: tabController.index == 4,
                    //   title: 'Homeplans',
                    //   icon: Icons.foundation,
                    //   ontap: () {
                    //     tabController.animateTo(4);
                    //   },
                    // ),
                    // const SizedBox(
                    //   height: 15,
                    // ),
                    // CustomDrawerItem(
                    //   isSelected: tabController.index == 5,
                    //   title: 'Order Screen',
                    //   icon: Icons.border_all,
                    //   ontap: () {
                    //     tabController.animateTo(5);
                    //   },
                    // ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomDrawerItem(
                      isSelected: tabController.index == 4,
                      title: 'LogOut',
                      icon: Icons.logout,
                      ontap: () {
                        showDialog(
                          context: context,
                          builder: (context) => CustomAlertDialog(
                            title: "LOG OUT",
                            content: const Text(
                              "Are you sure you want to log out? Clicking 'Logout' will end your current session and require you to sign in again to access your account.",
                            ),
                            width: 400,
                            primaryButton: "LOG OUT",
                            onPrimaryPressed: () {
                              Supabase.instance.client.auth.signOut();
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                  (route) => false);
                            },
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomDrawerItem(
                      isSelected: tabController.index == 5,
                      title: 'Change password',
                      icon: Icons.password,
                      ontap: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                Dashboard(),
                EmployScreen(),
                RentPropertiesScreen(),
                PropertieSale()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
