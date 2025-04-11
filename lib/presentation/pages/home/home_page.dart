import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/theme/text_colors.dart';
import '../../../core/widgets/binding/custom_bottom_nav.dart';
import '../../../core/widgets/custom_drawer.dart';
import 'home_controller.dart';
import 'inventory_page.dart';
import 'main_controller.dart';
import 'operations_page.dart';
import 'reports_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final MainController mainController = Get.put(MainController());
  final HomeController homeController = Get.put(HomeController());

  final List<Widget> pages = [
    DashboardPage(),
    OperationsPage(),
    InventoryPage(),
    ReportsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'الرئيسية',
          style: TextStyle(color: TextColors.white),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingMedium,
            ),
            child: Icon(Icons.arrow_forward_ios, color: TextColors.white),
          ),
        ],
      ),
      drawer: const CustomDrawer(), // سنقوم بتفصيلها لاحقًا
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppDimensions.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDailyStats(),
            const SizedBox(height: AppDimensions.paddingLarge),
            _buildAlertsSection(),
          ],
        ),
      ),
      // bottomNavigationBar: _buildBottomNavigationBar(),
      bottomNavigationBar: Obx(
        () => CustomBottomNav(
          selectedIndex: mainController.selectedIndex.value,
          onTap: mainController.changeTabIndex,
        ),
      ),
    );
  }

  Widget _buildDailyStats() {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.paddingMedium),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            'ملخص الإحصائيات اليومية',
            style: TextStyle(
              color: TextColors.primaryText,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppDimensions.paddingMedium),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 2.5,
            crossAxisSpacing: AppDimensions.paddingSmall,
            mainAxisSpacing: AppDimensions.paddingSmall,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              _StatCard(title: 'الطلبات الجديدة', value: '12'),
              _StatCard(title: 'قيد التنفيذ', value: '28'),
              _StatCard(title: 'المنتهية', value: '7'),
              _StatCard(title: 'المبيعات اليومية', value: 'ر.س 4,250'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAlertsSection() {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.paddingMedium),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
      ),
      child: Obx(
        () => IndexedStack(
          index: mainController.selectedIndex.value,

          children: pages,
        ),
      ),
    );
  }

  // Widget _buildBottomNavigationBar() {
  //   return BottomNavigationBar(
  //     currentIndex: 3, // الرئيسية
  //     selectedItemColor: AppColors.primary,
  //     unselectedItemColor: TextColors.secondaryText,
  //     type: BottomNavigationBarType.fixed,
  //     items: const [
  //       BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'التقارير'),
  //       BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'المخزون'),
  //       BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'العمليات'),
  //       BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'الرئيسية'),
  //     ],
  //   );
  // }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.paddingMedium),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Text(
            'التنبيهات العاجلة',
            style: TextStyle(
              color: TextColors.primaryText,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppDimensions.paddingMedium),
          _AlertCard(
            icon: Icons.warning_amber_rounded,
            text: '5 طلبات مستحقة التسليم اليوم',
            color: AppColors.warning,
          ),
          SizedBox(height: AppDimensions.paddingSmall),
          _AlertCard(
            icon: Icons.inventory_2,
            text: '3 أصناف وصلت للحد الأدنى في المخزون',
            color: AppColors.danger,
          ),
        ],
      ),
    );
  }
}

////
class _StatCard extends StatelessWidget {
  final String title;
  final String value;

  const _StatCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
      ),
      padding: const EdgeInsets.all(AppDimensions.paddingXS),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: TextColors.secondaryText,
            ),
          ),
        ],
      ),
    );
  }
}

class _AlertCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _AlertCard({
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.all(AppDimensions.paddingSmall),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: TextColors.primaryText),
            ),
          ),
          const SizedBox(width: AppDimensions.paddingSmall),
          Icon(icon, color: color),
        ],
      ),
    );
  }
}
