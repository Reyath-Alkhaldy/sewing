import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/custom_text_field.dart';
import 'add_customer_controller.dart';

class AddCustomerPage extends StatelessWidget {
  const AddCustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddCustomerController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('إضافة زبون جديد'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CustomTextField(
              label: 'اسم الزبون',
              controller: controller.nameController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              label: 'رقم الهاتف',
              controller: controller.phoneController,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              label: 'ملاحظة',
              controller: controller.noteController,
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: controller.saveCustomer,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text("حفظ", style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

// class AddCustomerPage extends StatelessWidget {
//   final nameController = TextEditingController();
//   final phoneController = TextEditingController();
//   final controller = Get.find<CustomersController>();

//   AddCustomerPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('إضافة زبون')),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(labelText: 'اسم الزبون'),
//             ),
//             TextField(
//               controller: phoneController,
//               decoration: const InputDecoration(labelText: 'رقم الهاتف'),
//               keyboardType: TextInputType.phone,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 final id = const Uuid().v4();
//                 final customer = CustomerModel(
//                   id: id,
//                   name: nameController.text.trim(),
//                   phone: phoneController.text.trim(),
//                 );
//                 controller.customers.add(customer);
//                 Get.back(); // رجوع إلى قائمة الزبائن
//               },
//               child: const Text('إضافة'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }