import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sewing_1/routes/app_routes.dart';
import 'customers_controller.dart';
import 'widgets/customer_card.dart';

class CustomersPage extends StatelessWidget {
  final CustomersController controller = Get.put(CustomersController());

  CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الزبائن'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Get.toNamed(AppRoutes.addCustomer);
            },
          ),
        ],
      ),
      body: Obx(() {
        if (controller.customers.isEmpty) {
          return const Center(child: Text('لا يوجد زبائن حالياً.'));
        }

        return ListView.builder(
          itemCount: controller.customers.length,
          itemBuilder: (context, index) {
            final customer = controller.customers[index];
            return CustomerCard(customer: customer);
          },
        );
      }),
    );
  }
}
