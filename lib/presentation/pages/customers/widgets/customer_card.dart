import 'package:flutter/material.dart';
import '../../../../data/models/customer_model.dart'; 
import 'package:get/get.dart';

import '../customers_controller.dart' show CustomersController; 

class CustomerCard extends StatelessWidget {
  final CustomerModel customer;

  const CustomerCard({super.key, required this.customer});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CustomersController>();

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(customer.name),
        subtitle: Text('رقم الهاتف: ${customer.phone}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit),
             onPressed: () {
  Get.toNamed('/edit-customer', arguments: customer);
},
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                controller.deleteCustomer(customer.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}