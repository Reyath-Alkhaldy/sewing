import 'package:get/get.dart';

class HomeController extends GetxController {
  var newOrders = 0.obs;
  var processingOrders = 0.obs;
  var finishedOrders = 0.obs;
  var dailySales = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    // استدعاء API أو Fake Data
    loadDashboardData();
  }

  void loadDashboardData() {
    newOrders.value = 12;
    processingOrders.value = 28;
    finishedOrders.value = 7;
    dailySales.value = 4250;
  }
}