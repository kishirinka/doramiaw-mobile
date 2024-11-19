import 'package:doramiaw/screens/item_detail.dart';
import 'package:flutter/material.dart';
import 'package:doramiaw/models/item_entry.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemEntryPage extends StatefulWidget {
  const ItemEntryPage({super.key});

  @override
  State<ItemEntryPage> createState() => _ItemEntryPageState();
}

class _ItemEntryPageState extends State<ItemEntryPage> {
  Future<List<ObjectEntry>> fetchItem(CookieRequest request) async {
    // Mengambil data JSON dari endpoint Django
    final response = await request.get('http://localhost:8000/json/');
    var data = response;

    // Konversi data JSON menjadi list objek ObjectEntry
    List<ObjectEntry> listItem = [];
    for (var d in data) {
      if (d != null) {
        listItem.add(ObjectEntry.fromJson(d));
      }
    }
    return listItem;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Item Entry List',
          style: TextStyle(color: Colors.white), // Tulisan putih
        ),
        backgroundColor: Theme.of(context).colorScheme.primary, // Warna biru utama
        leading: BackButton(
          color: Colors.white, // Panah kembali dengan warna putih
        ),
      ),
      body: FutureBuilder(
        future: fetchItem(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data item pada Doramiaw.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  elevation: 4,
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), 
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16.0),
                    title: Text(
                      "${snapshot.data![index].fields.name}",
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        Text(
                          "Harga: ${snapshot.data![index].fields.price}",
                          style: const TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Kategori: ${snapshot.data![index].fields.category}",
                          style: const TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Theme.of(context).colorScheme.secondary, // Warna aksen biru
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDetailPage(
                            item: snapshot.data![index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
