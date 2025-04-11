import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCustomerController extends GetxController {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final noteController = TextEditingController();

  @override
  void onClose() {
    nameController.dispose();
    phoneController.dispose();
    noteController.dispose();
    super.onClose();
  }

  void saveCustomer() {
    final name = nameController.text.trim();
    final phone = phoneController.text.trim();
    final note = noteController.text.trim();

    if (name.isEmpty || phone.isEmpty) {
      Get.snackbar("خطأ", "الرجاء تعبئة الاسم ورقم الهاتف");
      return;
    }

    // هنا يتم إرسال البيانات إلى طبقة الدومين / البيانات لاحقاً
    Get.back();
  }
}
