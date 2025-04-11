import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "الرئيسية"),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: "العمليات",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.store), label: "المخزون"),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "التقارير"),
      ],
    );
  }
}
