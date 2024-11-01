### 1. Pengertian stateless widget dan stateful widget serta perbedaan dari keduanya.
Stateless widget adalah adalah widget yang tampilannya tidak berubah selama siklus hidupnya. Sekali ditampilkan, tampilan ini tidak akan berubah otomatis, kecuali jika komponen di-refresh atau dibangun ulang. Sedangkan Stateful widget adalah widget yang memiliki state (keadaan) yang bisa berubah. Artinya, stateful widget cocok untuk elemen yang membutuhkan interaksi pengguna atau memperbarui tampilan berdasarkan input, seperti formulir atau tombol. Ketika state berubah, tampilan widget juga diperbarui.
#### P E R B E D A A N
    1. Stateless widget tidak memiliki state yang dapat diubah, sedangkan stateful widget memiliki state yang bisa berubah yang disimpan dalam objek _State
    2. Stateless widget hanya diperbarui jika ada perubahan di luar widget, sementara stateful widget bisa diperbarui di dalam aplikasi ketika state-nya berubah.
    3. Stateless widget digunakan untuk tampilan statis, sedangkan stateful widget cocok untuk elemen yang membutuhkan pembaruan, seperti tombol atau input pengguna.

### 2. Widget digunakan pada proyek ini dan fungsinya
Pada proyek ini, saya menggunakan beberapa widget Flutter dengan fungsi spesifik, antara lain:
1. Scaffold: Dalam proyek ini, Scaffold digunakan untuk membentuk dasar tampilan halaman dan memudahkan pengaturan elemen lain di dalamnya
2. Appbar: untuk membuat bagian atas aplikasi (header) yang sering berisi judul 'Doramiaw'
3. Text: Dalam proyek ini, Text digunakan pada berbagai tempat untuk menampilkan judul, label, dan pesan di tombol serta card.
4. ElevatedButton: Di proyek ini, tombol ini digunakan untuk interaksi utama, seperti "Lihat Daftar Produk", "Tambah Produk", dan "Logout".
5. Snackbar: Di proyek ini, Snackbar digunakan untuk memberikan umpan balik kepada pengguna ketika mereka menekan tombol, seperti pesan "Kamu telah menekan tombol Lihat Daftar Produk".
6. Card digunakan untuk menampilkan data pengguna, seperti NPM, Nama, dan Kelas, pada tampilan InfoCard. 
7. Icon: Di proyek ini, ikon digunakan pada setiap tombol seperti ikon shoppingbag, add, dan logout.

### 3. Fungsi setState() 
Fungsi setState() dalam Flutter digunakan untuk memperbarui tampilan widget ketika ada perubahan pada variabel yang memengaruhi UI. 
#### Variabel yang Terpengaruh: 
Contohnya Counter yang muncul saat flutter di run dan belum di ubah apa-apa. jika aplikasi menghitung jumlah berapa kali tombol plus ditekan, variabel ini akan disimpan dalam state kemudian memperbarui tampilan angka-nya.

### 4. Perbedaan antara const dengan final
Const dan final digunakan untuk mendeklarasikan variabel yang bersifat tidak dapat diubah. Perbedaannya adalah nilai variabel const harus ditentukan saat compile time, yaitu ketika aplikasi sedang dikompilasi sebelum dijalankan sehingga hanya dibuat sekali dalam memori untuk seluruh aplikasi dan lebih hemat memori. Sedangkan inisialisasi final ditentukan saat runtime, bukan hanya saat compile time. 

### 5. Cara mengimplementasikan checklist-checklist tugas 7
Dalam mengimplementasikan checklist di atas, pertama-tama saya membuat Proyek Flutter Baru dengan Tema Doramiaw seperti pada tugas pra UTS kemarin. Saya memulai dengan membuat proyek Flutter baru. Proyek ini kemudian berfungsi sebagai kerangka dasar untuk implementasi fitur-fitur berikutnya.

Setelah struktur proyek siap, saya menambahkan tiga tombol yang masing-masing memiliki ikon dan teks yang sesuai "Lihat Daftar Produk," "Tambah Produk," dan "Logout" dengan menambahkan itemhomepage(). Setiap tombol diimplementasikan sebagai widget terpisah. Untuk pemberian warna pada tombol-tombol tersebut, saya menambahkan properti color pada "ItemHomepage". Lalu meng-aasign warna-warna tersebut seperti berikut:
`ItemHomepage("Lihat Daftar Produk", Icons.mood, const Color.fromARGB(255, 122, 179, 226)),`
`ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 89, 163, 146)),`
`ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 199, 71, 112)),`

Untuk mengatur snackbar yang memunculkan pesan ketika tombol ditekan, Saya menggunakan `ScaffoldMessenger` untuk menampilkan pesan, spesifiknya paga bagian `SnackBar(content: Text("Kamu telah menekan ${item.name}!"))`. Nantinya, mama-nama tombol yang ditekan akan menggantikan `item.name`
