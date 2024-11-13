### T U G A S 7

#### 1. Pengertian stateless widget dan stateful widget serta perbedaan dari keduanya  
Stateless widget adalah widget yang tampilannya tidak berubah selama siklus hidupnya. Sekali ditampilkan, tampilan ini tidak akan berubah otomatis, kecuali jika komponen di-refresh atau dibangun ulang. Sedangkan Stateful widget adalah widget yang memiliki state (keadaan) yang bisa berubah. Artinya, stateful widget cocok untuk elemen yang membutuhkan interaksi pengguna atau memperbarui tampilan berdasarkan input, seperti formulir atau tombol. Ketika state berubah, tampilan widget juga diperbarui.  
##### P E R B E D A A N  
1. Stateless widget tidak memiliki state yang dapat diubah, sedangkan stateful widget memiliki state yang bisa berubah yang disimpan dalam objek _State.  
2. Stateless widget hanya diperbarui jika ada perubahan di luar widget, sementara stateful widget bisa diperbarui di dalam aplikasi ketika state-nya berubah.  
3. Stateless widget digunakan untuk tampilan statis, sedangkan stateful widget cocok untuk elemen yang membutuhkan pembaruan, seperti tombol atau input pengguna.  

#### 2. Widget digunakan pada proyek ini dan fungsinya  
Pada proyek ini, saya menggunakan beberapa widget Flutter dengan fungsi spesifik, antara lain:  
1. **Scaffold**: Dalam proyek ini, Scaffold digunakan untuk membentuk dasar tampilan halaman dan memudahkan pengaturan elemen lain di dalamnya.  
2. **AppBar**: Untuk membuat bagian atas aplikasi (header) yang sering berisi judul 'Doramiaw'.  
3. **Text**: Dalam proyek ini, Text digunakan pada berbagai tempat untuk menampilkan judul, label, dan pesan di tombol serta card.  
4. **ElevatedButton**: Di proyek ini, tombol ini digunakan untuk interaksi utama, seperti "Lihat Daftar Produk", "Tambah Produk", dan "Logout".  
5. **Snackbar**: Di proyek ini, Snackbar digunakan untuk memberikan umpan balik kepada pengguna ketika mereka menekan tombol, seperti pesan "Kamu telah menekan tombol Lihat Daftar Produk".  
6. **Card**: Digunakan untuk menampilkan data pengguna, seperti NPM, Nama, dan Kelas, pada tampilan InfoCard.  
7. **Icon**: Di proyek ini, ikon digunakan pada setiap tombol seperti ikon shopping bag, add, dan logout.  

#### 3. Fungsi setState()  
Fungsi setState() dalam Flutter digunakan untuk memperbarui tampilan widget ketika ada perubahan pada variabel yang memengaruhi UI.  
##### Variabel yang Terpengaruh:  
Contohnya Counter yang muncul saat Flutter di-run dan belum diubah apa-apa. Jika aplikasi menghitung jumlah berapa kali tombol plus ditekan, variabel ini akan disimpan dalam state kemudian memperbarui tampilan angkanya.  

#### 4. Perbedaan antara const dengan final  
Const dan final digunakan untuk mendeklarasikan variabel yang bersifat tidak dapat diubah. Perbedaannya adalah nilai variabel const harus ditentukan saat compile time, yaitu ketika aplikasi sedang dikompilasi sebelum dijalankan sehingga hanya dibuat sekali dalam memori untuk seluruh aplikasi dan lebih hemat memori. Sedangkan inisialisasi final ditentukan saat runtime, bukan hanya saat compile time.  

#### 5. Cara mengimplementasikan checklist-checklist tugas 7  
Dalam mengimplementasikan checklist di atas, pertama-tama saya membuat Proyek Flutter Baru dengan Tema Doramiaw seperti pada tugas pra-UTS kemarin. Saya memulai dengan membuat proyek Flutter baru. Proyek ini kemudian berfungsi sebagai kerangka dasar untuk implementasi fitur-fitur berikutnya.  

Setelah struktur proyek siap, saya menambahkan tiga tombol yang masing-masing memiliki ikon dan teks yang sesuai "Lihat Daftar Produk," "Tambah Produk," dan "Logout" dengan menambahkan itemhomepage(). Setiap tombol diimplementasikan sebagai widget terpisah. Untuk pemberian warna pada tombol-tombol tersebut, saya menambahkan properti color pada "ItemHomepage". Lalu meng-aasign warna-warna tersebut seperti berikut:  
```dart
ItemHomepage("Lihat Daftar Produk", Icons.mood, const Color.fromARGB(255, 122, 179, 226)),
ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 89, 163, 146)),
ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 199, 71, 112)),
```  

Untuk mengatur Snackbar yang memunculkan pesan ketika tombol ditekan, saya menggunakan `ScaffoldMessenger` untuk menampilkan pesan, spesifiknya pada bagian `SnackBar(content: Text("Kamu telah menekan ${item.name}!"))`. Nantinya, nama-nama tombol yang ditekan akan menggantikan `item.name`.  

---

### T U G A S 8

#### Kegunaan const di Flutter  
Dalam Flutter, `const` digunakan untuk mendefinisikan nilai atau objek yang tidak berubah (immutable) dan diketahui pada waktu kompilasi, sehingga meningkatkan efisiensi memori dan performa aplikasi. Objek `const` hanya dibuat sekali di memori dan dapat digunakan kembali, mengurangi konsumsi memori dan waktu rendering. Sebaiknya gunakan `const` untuk widget statis, nilai tetap, atau koleksi yang tidak berubah. Hindari `const` jika nilainya hanya diketahui saat runtime (gunakan `final`) atau jika objek tersebut perlu berubah selama aplikasi berjalan. Dengan memanfaatkan `const`, kode menjadi lebih efisien, aman, dan mudah dipahami.  

#### Penggunaan Column dan Row pada Flutter  
`Column` dan `Row` adalah widget tata letak di Flutter untuk menyusun anak-anaknya secara **vertikal** (`Column`) atau **horizontal** (`Row`). Keduanya memiliki `mainAxisAlignment` untuk mengatur distribusi pada sumbu utama dan `crossAxisAlignment` untuk mengatur perataan pada sumbu silang. Intinya gunakan `Column` untuk tata letak vertikal dan `Row` untuk horizontal.  
Contoh penggunaan:  
- **Column**: Menyusun teks, tombol, dan ikon secara vertikal.  
- **Row**: Menyusun elemen yang sama secara horizontal.  

#### Elemen input yang digunakan pada halaman form yang dibuat pada tugas kali ini  
**Elemen Input yang Digunakan**  
1. **`TextFormField`**: Digunakan untuk memasukkan teks seperti **Nama Produk**, **Harga Produk**, **Kategori Produk**, dan **Keterangan Produk**.  
2. **`ElevatedButton`**: Digunakan untuk tombol pengiriman (submit) dan memberikan aksi ketika tombol ditekan dengan validasi formulir (`_formKey.currentState!.validate()`).  
3. **`AlertDialog`**: Menampilkan dialog setelah data produk berhasil tersimpan dan menyediakan tampilan ringkasan data yang diinput pengguna.  
4. **`Padding`**: Memberikan jarak antar elemen input untuk tata letak yang lebih rapi.  
5. **`OutlineInputBorder`**: Memberikan border pada input `TextFormField` dengan sudut melengkung (radius).  
6. **`Column` dan `SingleChildScrollView`**: Digunakan untuk menyusun elemen input secara vertikal dan menangani skenario di mana elemen input melebihi layar.  

**Input yang Tidak Digunakan**  
- **Checkbox**, **Radio Button**, **DropdownButtonFormField**, atau **Switch**: Tidak ada input untuk pilihan biner atau dropdown.  
- **Slider** atau **RangeSlider**: Tidak ada input untuk memilih nilai dalam rentang.  
- **DatePicker** atau **TimePicker**: Tidak ada input tanggal atau waktu.  
- **Autocomplete**: Tidak digunakan untuk saran teks.  

#### Cara mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten  
Pada proyek ini, tema diatur menggunakan `ThemeData` pada `MaterialApp`, dengan warna biru. Tema utama menggunakan **`ColorScheme.fromSwatch`**, palet warnanya didefinisikan melalui `MaterialColor` berdasarkan warna utama `0xFF1B4778`, agar variasi warnanya bervariasi dari terang hingga gelap (level 50 hingga 900). Warna aksen juga disesuaikan melalui `copyWith` untuk mendukung warna sekunder. Pada kode ini, saya juga mengaktifkan **Material Design 3** melalui `useMaterial3`, agar bisa diakses ke elemen semua elemen bawaan Flutter, seperti tombol, AppBar, dan ikon. Saya mengimplementasikan tema yang dibuat, salah satunya untuk warna navbar.  

#### Cara menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter  
Saya menggunakan Navigator untuk berpindah halaman dengan metode push, pop, dan pushReplacement, serta mengatur Named Routes untuk navigasi yang lebih terstruktur. Selain itu, saya membuat Drawer Menu untuk navigasi cepat ke halaman lain, serta membangun halaman dengan Form dan elemen input seperti TextFormField yang dilengkapi validasi. Saya juga menampilkan data dari form menggunakan dialog pop-up dengan fungsi showDialog(). Untuk menjaga struktur proyek, saya memindahkan halaman ke folder screens dan komponen UI ke folder widgets.  