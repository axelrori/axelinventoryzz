### Nama    : Serafino Theodore Axel Rori
### NPM     : 2206082644
### Kelas   : PBP F

# **TUGAS 7**

## 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Perbedaan utama antara stateless dan stateful widget adalah sebagai berikut:
| Stateless Widget | Stateful Widget |
|------------------|-----------------|
| Tidak memiliki keadaan internal (state) yang dapat berubah setelah widget dibuat. Artinya, setelah dibuat, widget ini tidak dapat berubah. | Memiliki keadaan internal (state) yang dapat berubah selama siklus hidup widget tersebut. |

## 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
1. MyHomePage: Ini adalah kelas yang menggambarkan halaman utama aplikasi. Ini adalah stateless widget yang menggambarkan tata letak antarmuka pengguna.
2. Scaffold: Ini adalah widget yang memberikan kerangka dasar untuk halaman aplikasi. Ini termasuk appBar dan body. Dalam kode ini, appBar adalah AppBar yang menampilkan judul aplikasi.
3. AppBar: Ini adalah bagian atas aplikasi yang berisi judul dan latar belakang yang diatur dengan warna indigo.
4. Column: Ini adalah widget yang mengatur anak-anaknya secara vertikal. Di dalamnya, Anda memiliki elemen-elemen antarmuka pengguna seperti teks judul, dan GridView.
5. Padding: Widget ini digunakan untuk menambahkan padding ke dalam widget yang ada di dalamnya. Ini memungkinkan Anda mengontrol jarak antara elemen-elemen.
6. Text: Widget ini digunakan untuk menampilkan teks di antarmuka pengguna. Dalam kode ini, itu digunakan untuk menampilkan judul toko.
7. GridView.count: Ini adalah widget yang digunakan untuk membuat tata letak berbasis grid dengan jumlah kolom yang telah ditentukan. Dalam kode ini, itu digunakan untuk membuat grid dari ShopCard sesuai dengan jumlah item dalam items.
8. ShopItem: Ini adalah kelas yang mewakili item toko dengan properti seperti nama, ikon, dan warna.
9. ShopCard: Ini adalah stateless widget yang mewakili kartu item toko. Setiap ShopCard berisi ikon, teks, dan warna yang sesuai dengan item toko yang diberikan.
10. Material: Ini adalah widget yang digunakan untuk mengatur latar belakang berdasarkan warna yang sesuai dengan item toko.
11. InkWell: Ini adalah widget yang membuat area responsif terhadap sentuhan. Ketika di tekan, itu menampilkan pesan Snackbar yang menginformasikan item mana yang ditekan.
12. Container: Ini adalah widget yang digunakan untuk mengelompokkan ikon dan teks ke dalam satu wadah.
13. Icon: Ini adalah widget yang digunakan untuk menampilkan ikon dengan warna putih dan ukuran yang sesuai.
14. Padding: Widget ini digunakan untuk menambahkan jarak antara ikon dan teks.
15. SnackBar: Ini adalah pesan yang muncul saat Anda menekan kartu item dan memberikan informasi tentang item yang ditekan.

## 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

### Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
Pada checklist ini, saya membuat program flutter baru dengan nama axelinventoryzz. Ini dapat dilakukan dengan mengetik command berikut pada terminal dimana program ingin ditempatkan.
~~~
flutter create axelinventoryzz
~~~

###  Membuat tiga tombol sederhana dengan ikon dan teks untuk: Melihat daftar item (Lihat Item), Menambah item (Tambah Item), Logout (Logout)
Untuk mengerjakan checklist ini, saya menambahkan potongan kode berikut pada file menu.dart di dalam class MyHomePage.
~~~
final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, Colors.red),
    ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.blue),
    ShopItem("Logout", Icons.logout, Colors.purple),
  ];
~~~

### Memunculkan Snackbar dengan tulisan:"Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan, "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan, "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

Untuk mengerjakan checklist ini, saya menambahkan potongan kode berikut pada file menu.dart ke dalam Widget
~~~
onTap: () {
    ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
        content: Text("Kamu telah menekan tombol ${item.name}!")));
},
~~~

Untuk mengerjakan bagian bonus, saya mengubah beberapa kode di dalam menu.dart, diantaranya adalah sebagai berikut.

Saya menambahkan atribut color ke dalam class ShopItem, kemudian dimasukkan ke dalam constructor. Lalu bagian color dalam class ShopCard diubah menjadi item.color sehingga kode terlihat seperti berikut:
~~~
class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      ...
~~~

Kemudian untuk menambahkan warna pada setiap tombol, saya menambahkannya pada List<ShopItem> items di dalam class MyHomePage sehingga terlihat seperti berikut:
~~~
final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, Colors.red),
    ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.blue),
    ShopItem("Logout", Icons.logout, Colors.purple),
];
~~~


# **Tugas 8**

## 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Navigator.push() digunakan untuk menambahkan rute baru ke dalam stack. Ketika rute baru ditambahkan, rute sebelumnya tetap ada di dalam stack. Ketika pengguna menekan tombol kembali, pengguna akan kembali ke rute sebelumnya. Sedangkan Navigator.pushReplacement() digunakan untuk mengganti rute yang ada di stack dengan rute baru. Ketika rute baru ditambahkan, rute sebelumnya dihapus dari stack. Ketika pengguna menekan tombol kembali, pengguna akan langsung kembali ke rute sebelumnya.

## 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

1. Container: Widget ini digunakan untuk mengatur tata letak dan dekorasi widget lain. Container dapat digunakan untuk menentukan ukuran, padding, margin, warna latar belakang, dan banyak lagi. Container bisa dibilang sangat fleksibel dan dapat digunakan dalam berbagai konteks.

2. Row dan Column: Digunakan untuk mengatur widget secara horizontal (Row) atau vertikal (Column). Row dan Column dapat digunakan untuk menampilkan widget dalam bentuk baris atau kolom. Kedua widget ini sangat berguna untuk membuat tata letak yang kompleks.

3. Stack: Digunakan untuk menumpuk widget di atas satu sama lain. Stack berguna untuk membuat tata letak yang kompleks dan menarik. Dalam Stack, widget ditumpuk di atas satu sama lain dalam urutan yang ditentukan.

4. Expanded: Digunakan untuk mengisi ruang kosong dalam widget parent. Expanded dapat digunakan dalam Row atau Column untuk memberikan widget tambahan ruang yang tersedia.

5. ListView: Digunakan untuk menampilkan daftar widget dalam bentuk scrollable. ListView sangat berguna untuk menampilkan daftar item yang panjang.

6. GridView: Digunakan untuk menampilkan daftar widget dalam bentuk grid. GridView sangat berguna untuk menampilkan daftar item dalam bentuk grid.

## 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Nama Item:
Atribut ini menggunakan TextFormField
~~~
child: TextFormField(
  decoration: InputDecoration(
    hintText: "Nama Item",
    labelText: "Nama Item",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  onChanged: (String? value) {
    setState(() {
      _name = value!;
    });
  },
  validator: (String? value) {
    if (value == null || value.isEmpty) {
      return "Nama tidak boleh kosong!";
    }
    return null;
  },
),
~~~

Harga:
Atribut ini menggunakan TextFormField, namun terdapat validasi bahwa input harus dalam bentuk integer
~~~
child: TextFormField(
  decoration: InputDecoration(
    hintText: "Harga",
    labelText: "Harga",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  onChanged: (String? value) {
    setState(() {
      _price = int.parse(value!);
    });
  },
  validator: (String? value) {
    if (value == null || value.isEmpty) {
      return "Harga tidak boleh kosong!";
    }
    if (int.tryParse(value) == null) {
      return "Harga harus berupa angka!";
    }
    return null;
  },
),
~~~

Deskripsi:
Atribut ini menggunakan TextFormField
~~~
child: TextFormField(
  decoration: InputDecoration(
    hintText: "Deskripsi",
    labelText: "Deskripsi",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  onChanged: (String? value) {
    setState(() {
      _description = value!;
    });
  },
  validator: (String? value) {
    if (value == null || value.isEmpty) {
      return "Deskripsi tidak boleh kosong!";
    }
    return null;
  },
),
~~~

## 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
Clean Architecture adalah suatu pola arsitektur yang digunakan untuk menyusun kode yang bersih dan terstruktur. Dalam Flutter, Clean Architecture dapat diterapkan dengan memisahkan kode menjadi beberapa lapisan, diantaranya terdapat:

**Domain Layer:** Lapisan ini berisi bisnis logic dan model data dari aplikasi.

**Application Layer:** Lapisan ini mengimplementasikan use case dari aplikasi dan menghubungkan lapisan infrastruktur dan presentasi.

**Infrastructure Layer:** Lapisan ini berurusan dengan interaksi dengan dunia luar, termasuk database, web server, dan antarmuka pengguna.

**Presentation Layer:** Lapisan ini berisi kode yang merender antarmuka pengguna.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
### Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
 **Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.**

Untuk checklist ini, saya menambahkan potongan kode berikut pada file shoplist_form.dart
~~~
class _ShopFormPageState extends State<ShopFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";
  ...
}
~~~

 **Memiliki sebuah tombol Save.**

Untuk menambahkan tombol save, saya menambahkan method _saveItem di dalam class _ShopFormPageState

 **Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:**

 **1. Setiap elemen input tidak boleh kosong.**

Untuk mengerjakan checklist ini, saya menambahkan potongan kode dalam Widget dari ketiga attribut yang terdapat di dalam form. Berikut adalah potongan kode yang saya tambahkan.

Nama Item
~~~
if (value == null || value.isEmpty) {
  return "Nama tidak boleh kosong!";
}
~~~

Harga
~~~
if (value == null || value.isEmpty) {
  return "Harga tidak boleh kosong!";
}
~~~

Deskripsi
~~~
if (value == null || value.isEmpty) {
  return "Deskripsi tidak boleh kosong!";
}
~~~

 **2. Setiap elemen input harus berisi data dengan tipe data atribut modelnya.**

Sama seperti checklist sebelumnya, saya menambahkan potongan kode dalam Widget dari ketiga attribut yang terdapat di dalam form. Namun pada checklist ini, Nama Item dan deskripsi tidak memerlukan validasi tipe data karena kedua atribut tersebut tidak harus berbrntuk integer. Berikut adalah potongan kode yang saya tambahkan pada harga yang inputnya harus dalam bentuk integer.

Harga
~~~
if (int.tryParse(value) == null) {
  return "Harga harus berupa angka!";
}
~~~