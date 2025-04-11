import 'package:flutter/material.dart';

class FabricsPage extends StatelessWidget {
  final List<Map<String, String>> fabrics = [
    {
      'name': 'قماش قطن مصري',
      'price': 'من 45 - 80 ريال/متر',
    },
    {
      'name': 'قماش كتان فاخر',
      'price': 'من 32 - 120 ريال/متر',
    },
    {
      'name': 'قماش حرير طبيعي',
      'price': 'من 18 - 200 ريال/متر',
    },
    {
      'name': 'قماش صوف انجليزي',
      'price': 'من 24 - 150 ريال/متر',
    },
  ];

   FabricsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('المخزون'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'أقمشة'),
              Tab(text: 'خطوط'),
              Tab(text: 'إكسسوارات'),
              Tab(text: 'مستلزمات'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildFabricsTab(),
            Center(child: Text('قريبًا')),
            Center(child: Text('قريبًا')),
            Center(child: Text('قريبًا')),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          onTap: (index) {
            // التنقل بين الصفحات
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
            BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'المخزون'),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: 'الطلبات'),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'التقارير'),
          ],
        ),
      ),
    );
  }

  Widget _buildFabricsTab() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: fabrics.length,
      itemBuilder: (context, index) {
        final item = fabrics[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            title: Text(item['name']!, textDirection: TextDirection.rtl),
            subtitle: Text(item['price']!, textDirection: TextDirection.rtl),
            trailing: const Icon(Icons.chevron_left),
            onTap: () {
              // الانتقال إلى تفاصيل القماش
            },
          ),
        );
      },
    );
  }
}