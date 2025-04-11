import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_dimensions.dart' show AppDimensions;
 

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.primary,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 30, color: AppColors.primary),
                  ),
                  SizedBox(height: AppDimensions.paddingSmall),
                  Text(
                    'اسم المستخدم',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'admin@example.com',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(
              icon: Icons.dashboard,
              title: 'الرئيسية',
              onTap: () => Navigator.pop(context),
            ),
            _buildDrawerItem(
              icon: Icons.inventory,
              title: 'المخزون',
              onTap: () {},
            ),
            _buildDrawerItem(
              icon: Icons.list_alt,
              title: 'العمليات',
              onTap: () {},
            ),
            _buildDrawerItem(
              icon: Icons.bar_chart,
              title: 'التقارير',
              onTap: () {},
            ),
            const Divider(color: Colors.white30),
            _buildDrawerItem(
              icon: Icons.settings,
              title: 'الإعدادات',
              onTap: () {},
            ),
            _buildDrawerItem(
              icon: Icons.logout,
              title: 'تسجيل الخروج',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      onTap: onTap,
    );
  }
}