import 'package:get/get.dart';
import '../../../data/models/customer_model.dart' show CustomerModel;

class CustomersController extends GetxController {
  var customers = <CustomerModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCustomers();
  }

  void fetchCustomers() {
    // مؤقتاً بيانات وهمية (Mock Data)
    customers.assignAll([
      CustomerModel(id: '1', name: 'أحمد علي', phone: '0551234567'),
      CustomerModel(id: '2', name: 'خالد محمد', phone: '0557654321'),
    ]);
  }

  void deleteCustomer(String id) {
    customers.removeWhere((c) => c.id == id);
  }
  void updateCustomer(CustomerModel updatedCustomer) {
  final index = customers.indexWhere((c) => c.id == updatedCustomer.id);
  if (index != -1) {
    customers[index] = updatedCustomer;
  }
}
}