import 'package:flutter/material.dart';
import 'package:doramiaw/widgets/left_drawer.dart';
import 'package:doramiaw/screens/itementry_form.dart';
import 'package:doramiaw/screens/item_card.dart';

class MyHomePage extends StatelessWidget {
  final String studentID = '2306226864';
  final String name = 'Irma Nia Alwijah';
  final String className = 'PBP B';

  MyHomePage({super.key});

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.shopping_bag, const Color.fromARGB(255, 26, 75, 126)),
    ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 53, 110, 158)),
    ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 199, 71, 112)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Doramiaw',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: studentID),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Doramiaw',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((item) => ItemCard(item: item)).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
