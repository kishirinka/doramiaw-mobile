import 'package:doramiaw/screens/list_itementry.dart';
import 'package:doramiaw/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:doramiaw/widgets/left_drawer.dart';
import 'package:doramiaw/screens/itementry_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () async {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan ${item.name}!")),
            );

              if (item.name == "Tambah Produk") {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ItemEntryFormPage(),
                ),
              );// TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup MoodEntryFormPage.
            }else if (item.name == "Lihat Daftar Produk") {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const ItemEntryPage()
                ),
            );
        }else if (item.name == "Logout") {
          final response = await request.logout(
              "http://localhost:8000/auth/logout/");
          String message = response["message"];
          if (context.mounted) {
              if (response['status']) {
                  String uname = response["username"];
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("$message Sampai jumpa, $uname."),
                  ));
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
              } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(message),
                      ),
                  );
              }
          }
      }
        },
        child: Container(
          padding: const EdgeInsets.all(6), // Reduced padding for smaller button
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 24.0, // Reduced icon size
                ),
                const SizedBox(height: 3),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12.0, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
