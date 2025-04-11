import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("مدير النظام"),
            accountEmail: Text("ri...@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person, size: 30),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text("لوحة المعلومات"),
            onTap: () => Get.back(), // سنضيف التنقل لاحقًا
          ),
          ListTile(
            leading: const Icon(Icons.assignment),
            title: const Text("العمليات"),
            onTap: () => Get.back(),
          ),
          ListTile(
            leading: const Icon(Icons.store),
            title: const Text("المخزون"),
            onTap: () => Get.back(),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "الإدارة والتهيئة",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("إدارة النظام"),
            onTap: () => Get.back(),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text("مدخلات النظام"),
            onTap: () => Get.back(),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("الموظفين"),
            onTap: () => Get.back(),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("العملاء"),
            onTap: () => Get.back(),
          ),
          ListTile(
            leading: const Icon(Icons.local_shipping),
            title: const Text("الموردين"),
            onTap: () => Get.back(),
          ),
        ],
      ),
    );
  }
}