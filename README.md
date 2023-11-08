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