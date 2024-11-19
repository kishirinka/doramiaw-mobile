# T U G A S 7

### 1. Pengertian stateless widget dan stateful widget serta perbedaan dari keduanya  
Stateless widget adalah widget yang tampilannya tidak berubah selama siklus hidupnya. Sekali ditampilkan, tampilan ini tidak akan berubah otomatis, kecuali jika komponen di-refresh atau dibangun ulang. Sedangkan Stateful widget adalah widget yang memiliki state (keadaan) yang bisa berubah. Artinya, stateful widget cocok untuk elemen yang membutuhkan interaksi pengguna atau memperbarui tampilan berdasarkan input, seperti formulir atau tombol. Ketika state berubah, tampilan widget juga diperbarui.  
##### P E R B E D A A N  
1. Stateless widget tidak memiliki state yang dapat diubah, sedangkan stateful widget memiliki state yang bisa berubah yang disimpan dalam objek _State.  
2. Stateless widget hanya diperbarui jika ada perubahan di luar widget, sementara stateful widget bisa diperbarui di dalam aplikasi ketika state-nya berubah.  
3. Stateless widget digunakan untuk tampilan statis, sedangkan stateful widget cocok untuk elemen yang membutuhkan pembaruan, seperti tombol atau input pengguna.  

### 2. Widget digunakan pada proyek ini dan fungsinya  
Pada proyek ini, saya menggunakan beberapa widget Flutter dengan fungsi spesifik, antara lain:  
1. **Scaffold**: Dalam proyek ini, Scaffold digunakan untuk membentuk dasar tampilan halaman dan memudahkan pengaturan elemen lain di dalamnya.  
2. **AppBar**: Untuk membuat bagian atas aplikasi (header) yang sering berisi judul 'Doramiaw'.  
3. **Text**: Dalam proyek ini, Text digunakan pada berbagai tempat untuk menampilkan judul, label, dan pesan di tombol serta card.  
4. **ElevatedButton**: Di proyek ini, tombol ini digunakan untuk interaksi utama, seperti "Lihat Daftar Produk", "Tambah Produk", dan "Logout".  
5. **Snackbar**: Di proyek ini, Snackbar digunakan untuk memberikan umpan balik kepada pengguna ketika mereka menekan tombol, seperti pesan "Kamu telah menekan tombol Lihat Daftar Produk".  
6. **Card**: Digunakan untuk menampilkan data pengguna, seperti NPM, Nama, dan Kelas, pada tampilan InfoCard.  
7. **Icon**: Di proyek ini, ikon digunakan pada setiap tombol seperti ikon shopping bag, add, dan logout.  

### 3. Fungsi setState()  
Fungsi setState() dalam Flutter digunakan untuk memperbarui tampilan widget ketika ada perubahan pada variabel yang memengaruhi UI.  
##### Variabel yang Terpengaruh:  
Contohnya Counter yang muncul saat Flutter di-run dan belum diubah apa-apa. Jika aplikasi menghitung jumlah berapa kali tombol plus ditekan, variabel ini akan disimpan dalam state kemudian memperbarui tampilan angkanya.  

### 4. Perbedaan antara const dengan final  
Const dan final digunakan untuk mendeklarasikan variabel yang bersifat tidak dapat diubah. Perbedaannya adalah nilai variabel const harus ditentukan saat compile time, yaitu ketika aplikasi sedang dikompilasi sebelum dijalankan sehingga hanya dibuat sekali dalam memori untuk seluruh aplikasi dan lebih hemat memori. Sedangkan inisialisasi final ditentukan saat runtime, bukan hanya saat compile time.  

### 5. Cara mengimplementasikan checklist-checklist tugas 7  
Dalam mengimplementasikan checklist di atas, pertama-tama saya membuat Proyek Flutter Baru dengan Tema Doramiaw seperti pada tugas pra-UTS kemarin. Saya memulai dengan membuat proyek Flutter baru. Proyek ini kemudian berfungsi sebagai kerangka dasar untuk implementasi fitur-fitur berikutnya.  

Setelah struktur proyek siap, saya menambahkan tiga tombol yang masing-masing memiliki ikon dan teks yang sesuai "Lihat Daftar Produk," "Tambah Produk," dan "Logout" dengan menambahkan itemhomepage(). Setiap tombol diimplementasikan sebagai widget terpisah. Untuk pemberian warna pada tombol-tombol tersebut, saya menambahkan properti color pada "ItemHomepage". Lalu meng-aasign warna-warna tersebut seperti berikut:  
```dart
ItemHomepage("Lihat Daftar Produk", Icons.mood, const Color.fromARGB(255, 122, 179, 226)),
ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 89, 163, 146)),
ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 199, 71, 112)),
```  

Untuk mengatur Snackbar yang memunculkan pesan ketika tombol ditekan, saya menggunakan `ScaffoldMessenger` untuk menampilkan pesan, spesifiknya pada bagian `SnackBar(content: Text("Kamu telah menekan ${item.name}!"))`. Nantinya, nama-nama tombol yang ditekan akan menggantikan `item.name`.  

---

# T U G A S 8

### 1. Kegunaan const di Flutter  
Dalam Flutter, `const` digunakan untuk mendefinisikan nilai atau objek yang tidak berubah (immutable) dan diketahui pada waktu kompilasi, sehingga meningkatkan efisiensi memori dan performa aplikasi. Objek `const` hanya dibuat sekali di memori dan dapat digunakan kembali, mengurangi konsumsi memori dan waktu rendering. Sebaiknya gunakan `const` untuk widget statis, nilai tetap, atau koleksi yang tidak berubah. Hindari `const` jika nilainya hanya diketahui saat runtime (gunakan `final`) atau jika objek tersebut perlu berubah selama aplikasi berjalan. Dengan memanfaatkan `const`, kode menjadi lebih efisien, aman, dan mudah dipahami.  

### 2. Penggunaan Column dan Row pada Flutter  
`Column` dan `Row` adalah widget tata letak di Flutter untuk menyusun anak-anaknya secara **vertikal** (`Column`) atau **horizontal** (`Row`). Keduanya memiliki `mainAxisAlignment` untuk mengatur distribusi pada sumbu utama dan `crossAxisAlignment` untuk mengatur perataan pada sumbu silang. Intinya gunakan `Column` untuk tata letak vertikal dan `Row` untuk horizontal.  
Contoh penggunaan:  
- **Column**: Menyusun teks, tombol, dan ikon secara vertikal.  
- **Row**: Menyusun elemen yang sama secara horizontal.  

### 3. Elemen input yang digunakan pada halaman form yang dibuat pada tugas kali ini  
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

### 4. Cara mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten  
Pada proyek ini, tema diatur menggunakan `ThemeData` pada `MaterialApp`, dengan warna biru. Tema utama menggunakan **`ColorScheme.fromSwatch`**, palet warnanya didefinisikan melalui `MaterialColor` berdasarkan warna utama `0xFF1B4778`, agar variasi warnanya bervariasi dari terang hingga gelap (level 50 hingga 900). Warna aksen juga disesuaikan melalui `copyWith` untuk mendukung warna sekunder. Pada kode ini, saya juga mengaktifkan **Material Design 3** melalui `useMaterial3`, agar bisa diakses ke elemen semua elemen bawaan Flutter, seperti tombol, AppBar, dan ikon. Saya mengimplementasikan tema yang dibuat, salah satunya untuk warna navbar.  

### 5. Cara menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter  
Saya menggunakan Navigator untuk berpindah halaman dengan metode push, pop, dan pushReplacement, serta mengatur Named Routes untuk navigasi yang lebih terstruktur. Selain itu, saya membuat Drawer Menu untuk navigasi cepat ke halaman lain, serta membangun halaman dengan Form dan elemen input seperti TextFormField yang dilengkapi validasi. Saya juga menampilkan data dari form menggunakan dialog pop-up dengan fungsi showDialog(). Untuk menjaga struktur proyek, saya memindahkan halaman ke folder screens dan komponen UI ke folder widgets.  

# T U G A S 9
 ### 1. Alasan kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON dan apakah akan terjadi error jika tidak membuat model terlebih dahulu
 Kita perlu membuat **model** untuk pengambilan atau pengiriman data JSON karena model membantu memastikan data yang diterima atau dikirim memiliki struktur yang jelas dan sesuai dengan kebutuhan aplikasi. Dengan model, data dapat diakses seperti properti objek (misalnya, `fields.name`), sehingga lebih mudah digunakan dan dikelola. Selain itu, model juga mempermudah validasi dan memastikan tipe data yang diterima benar (contoh: integer, string).Tanpa model, kesalahan seperti nama kunci yang salah atau akses data yang tidak valid lebih sulit dideteksi, yang dapat menyebabkan error runtime.

Bisa jadi, tapi gak selalu. Jika struktur JSON berubah, aplikasi tanpa model lebih rentan terhadap error. Kesalahan seperti `NoSuchMethodError` atau `TypeError` lebih mungkin terjadi karena data diakses tanpa kontrol tipe atau struktur yang jelas.

### 2. Fungsi dari library http yang sudah diimplementasikan pada tugas ini
**Library HTTP pada tugas ini berfungsi untuk**:
1. **Mengirimkan data produk ke backend**: Library HTTP digunakan untuk melakukan HTTP POST request, mengirimkan data dari aplikasi Flutter ke backend.Pada tugas ini, data produk yang dimasukkan pengguna (seperti nama, harga, kategori, dan keterangan) dikirimkan ke backend Django.
2. **Menerima respons dari backend untuk memastikan keberhasilan operasi**: Setelah data dikirim, library menerima respons dari backend. Respons ini digunakan untuk menentukan apakah operasi berhasil atau gagal
3. **Mengelola konversi data antara JSON dan Dart**: Library HTTP membantu dalam mengonversi data antara format JSON (digunakan oleh backend) dan objek Dart (digunakan oleh Flutter).
4. **Menangani autentikasi pengguna secara otomatis**: Library pbp_django_auth secara otomatis menangani session cookies untuk autentikasi pengguna. Dengan ini, setiap request yang dikirim terhubung dengan sesi pengguna yang sedang login.

### 3. Fungsi dari CookieRequest dan alasan instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest adalah kelas yang digunakan untuk menyimpan cookies yang diterima dari server, seperti token autentikasi atau data sesi. Cookies ini secara otomatis dilampirkan pada setiap request yang dikirimkan, memungkinkan backend untuk mengenali pengguna yang sedang login. Selain itu, cookies mengelola data respons dari backend sehingga dapat digunakan langsung di aplikasi tanpa perlu konfigurasi tambahan.

Karena CookieRequest menyimpan data cookies untuk sesi pengguna, membagikannya ke seluruh aplikasi memastikan semua request menggunakan cookies yang sama. Dengan membagikan instance CookieRequest, semua komponen aplikasi dapat mengakses fungsi autentikasi dan sesi pengguna (seperti login, logout, atau validasi token) tanpa perlu menginisialisasi ulang. Instance yang dibagikan memastikan setiap komponen menggunakan instance yang sama tanpa membuat object baru, mengurangi duplikasi dan inkonsistensi dalam pengelolaan cookies.

### 4. Mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. **Input Data di Flutter**: Pengguna mengisi form di aplikasi Flutter, seperti nama produk, harga, kategori, dan keterangan. Data ini ditangkap melalui widget seperti `TextFormField` dan disimpan sementara dalam variabel menggunakan `onChanged`.
2. **Validasi Data**: Sebelum data dikirim ke server, Flutter memvalidasi apakah data yang diisi sudah benar (tidak kosong atau salah format). Jika validasi berhasil, proses dilanjutkan.
3. **Mengirim Data ke Backend**: Flutter mengonversi data yang diinput menjadi format JSON menggunakan `jsonEncode` dan mengirimnya ke server Django melalui POST request. Pengiriman ini dilakukan menggunakan library HTTP, seperti `pbp_django_auth`.
4. **Backend Memproses Data**: Django menerima data dari Flutter, memvalidasinya lagi, lalu menyimpannya ke dalam database menggunakan model yang sesuai. Jika berhasil, Django mengirimkan respons JSON kembali ke Flutter.
5. **Menerima Respons di Flutter**: Flutter membaca respons dari backend. Jika respons menunjukkan data berhasil disimpan, aplikasi memberi notifikasi kepada pengguna bahwa data berhasil ditambahkan.
6. **Menampilkan Data Kembali**: Untuk menampilkan data yang sudah disimpan, Flutter mengirimkan GET request ke server untuk mengambil data dari database. Data ini ditampilkan di aplikasi menggunakan widget seperti `ListView`.

### 5. Mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. **Register (Daftar Akun)**: Pengguna mengisi form pendaftaran di Flutter dengan data seperti username, email, dan password. Data ini dikirimkan ke backend Django dalam format JSON. Django memvalidasi data tersebut, memastikan username/email unik, lalu menyimpan akun ke database. Jika berhasil, Django mengirimkan respons sukses, dan Flutter menampilkan notifikasi bahwa akun berhasil dibuat.
2. **Login (Masuk Akun)**: Pengguna memasukkan username/email dan password di Flutter. Data ini dikirim ke Django untuk divalidasi. Django memeriksa apakah username/email ada dan password cocok dengan database. Jika valid, Django membuat **session cookies** atau token untuk sesi pengguna dan mengirimkannya ke Flutter. Setelah itu, Flutter menyimpan sesi ini dan mengarahkan pengguna ke menu utama.
3. **Menu Utama Setelah Login**: Setelah login, Flutter menggunakan cookies/token autentikasi ini untuk mengambil data dari Django. Django memverifikasi token tersebut, lalu mengirim data pengguna atau menu ke Flutter. Flutter kemudian menampilkan menu sesuai dengan data pengguna yang berhasil login.
4. **Logout (Keluar Akun)**: Ketika pengguna logout, Flutter mengirim permintaan ke Django untuk menghapus sesi. Django menghapus cookies/token autentikasi dari server, dan sesi pengguna diakhiri. Flutter kemudian mengarahkan pengguna kembali ke halaman login.

### 6. Cara mengimplementasikan checklist di atas secara step-by-step! 
Untuk menyelesaikan tugas ini, saya memulai dengan memastikan bahwa proyek Django telah berjalan dengan baik di localhost. Saya menguji semua endpoint seperti register, login, dan item list menggunakan Postman untuk memastikan bahwa data dapat dikirim dan diterima dengan benar. Setelah memastikan backend berfungsi, saya melanjutkan ke implementasi di Flutter dengan membuat halaman registrasi menggunakan widget `TextFormField` untuk menerima input pengguna seperti username, email, dan password. Saya menambahkan validasi form di Flutter untuk memastikan input sesuai format sebelum mengirimkannya ke endpoint Django. Selanjutnya, saya membuat halaman login dengan input username/email dan password. Data login ini dikirim ke Django untuk validasi, dan jika berhasil, cookies/token sesi disimpan menggunakan `CookieRequest`.

Setelah autentikasi berhasil diintegrasikan, saya membuat model kustom di Flutter untuk mempermudah parsing data JSON dari Django. Saya menggunakan model ini untuk menampilkan daftar item yang diambil dari endpoint Django. Halaman daftar item menampilkan informasi seperti nama, harga, dan deskripsi menggunakan widget `ListView.builder`. Untuk setiap item, saya menambahkan navigasi ke halaman detail yang menampilkan seluruh atribut item dan menyediakan tombol untuk kembali ke halaman daftar.

Selanjutnya, saya memastikan fitur filter pada halaman daftar item hanya menampilkan item yang terasosiasi dengan pengguna yang sedang login. Hal ini dilakukan dengan mengupdate endpoint Django agar hanya mengembalikan data yang relevan dengan pengguna tersebut. Di Flutter, saya memastikan cookies autentikasi disertakan dalam setiap request untuk menjaga validitas data yang ditampilkan. Dengan langkah-langkah ini, semua fitur dalam checklist berhasil diimplementasikan secara bertahap dan terintegrasi dengan baik antara Django dan Flutter.