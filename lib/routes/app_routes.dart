import 'package:get/get.dart';
import '../presentation/pages/home/home_page.dart';
import '../presentation/pages/splash/splash_page.dart';
import '../presentation/pages/customers/customers_page.dart';
import '../presentation/pages/customers/add_customer_page.dart';
import '../presentation/pages/customers/edit_customer_page.dart';

class AppRoutes {
  static const splash = '/';
  static const home = '/home';
  static const customers = '/customers';
  static const addCustomer = '/add-customer';
  static const editCustomer = '/edit-customer';
}

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => SplashPage()),
    GetPage(name: AppRoutes.home, page: () => HomePage()),
    GetPage(name: AppRoutes.customers, page: () => CustomersPage()),
    GetPage(name: AppRoutes.addCustomer, page: () => AddCustomerPage()),

    GetPage(name: AppRoutes.editCustomer, page: () => EditCustomerPage()),
    // سنضيف صفحات الإضافة والتعديل لاحقاً
  ];
}
