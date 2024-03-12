# TP1PrakProvis2024C1

# Pemesanan Makanan Online dengan Dart

Program ini merupakan simulasi pemesanan makanan online yang dibuat dengan menggunakan bahasa pemrograman Dart. Program ini mengimplementasikan konsep Object-Oriented Programming (OOP) dan Asynchronous.

## Struktur Proyek

1. **food_order.dart**: File utama yang berisi implementasi program pemesanan makanan online.
2. **README.md**: Dokumen ini yang memberikan penjelasan mengenai program.

## Implementasi OOP

Konsep OOP diterapkan dalam program ini dengan memanfaatkan fitur kelas, Polymorphism, pewarisan (inheritance), dan pembuatan objek. Berikut adalah struktur kelas yang digunakan:

- **MenuItem**: Kelas induk yang merepresentasikan item menu. Memiliki atribut `name` dan `price`.
- **Food**: Kelas turunan dari `MenuItem` yang merepresentasikan makanan. Memiliki atribut tambahan `category`.
- **Drink**: Kelas turunan dari `MenuItem` yang merepresentasikan minuman. Memiliki atribut tambahan `size`.
- **Order**: Kelas yang merepresentasikan pesanan, berisi daftar item-menu yang dipesan.
- **FoodDeliveryService**: Kelas yang menyediakan layanan pemesanan makanan online.

## Implementasi Asynchronous

Asynchronous digunakan dalam program ini untuk mensimulasikan proses pemesanan yang membutuhkan waktu. Fungsi `placeOrder` pada kelas `FoodDeliveryService` diimplementasikan secara asynchronous dengan menggunakan kata kunci `async` dan `await`. Proses pemesanan tersebut disimulasikan dengan menggunakan `Future.delayed`.

## Cara Penggunaan

1. Pastikan Dart SDK telah terpasang di komputer Anda.
2. Jalankan file `food_order.dart` dengan perintah `dart food_order.dart`.
3. Program akan mensimulasikan proses pemesanan makanan online, mencetak detail pesanan, dan total harga pesanan.

## Screenshot
![Screenshot_1](https://github.com/arulzkash/TP1PrakProvis2024C1/assets/73780374/c19ab38b-dfb6-4647-a3cc-2418b64e2053)




