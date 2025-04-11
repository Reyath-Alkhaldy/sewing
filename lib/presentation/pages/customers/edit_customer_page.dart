import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/customer_model.dart';
import 'customers_controller.dart';

class EditCustomerPage extends StatelessWidget {
  final CustomersController controller = Get.find<CustomersController>();
  final CustomerModel customer = Get.arguments;

  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  EditCustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    nameController.text = customer.name;
    phoneController.text = customer.phone;

    return Scaffold(
      appBar: AppBar(title: const Text('تعديل بيانات الزبون')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'اسم الزبون'),
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: 'رقم الهاتف'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final updatedCustomer = customer.copyWith(
                  name: nameController.text.trim(),
                  phone: phoneController.text.trim(),
                );

                controller.updateCustomer(updatedCustomer);
                Get.back();
              },
              child: const Text('حفظ التعديلات'),
            ),
          ],
        ),
      ),
    );
  }
}