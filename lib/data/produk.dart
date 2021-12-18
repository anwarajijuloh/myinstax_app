import 'package:flutter/cupertino.dart';
import 'constans.dart';

class Produk {
  final String name, fotoProduk, price;
  Color warna;
  Produk(
      {required this.name,
      required this.fotoProduk,
      required this.price,
      required this.warna});
}

final allproduk = <Produk>[
  Produk(
      name: 'Mini Mint 7+',
      fotoProduk: 'assets/InstaxMini7plus_Mint_R.png',
      price: '49.90',
      warna: mintInstax),
  Produk(
      name: 'Mini Blue 7+',
      fotoProduk: 'assets/InstaxMini7plus_Blue_R.png',
      price: '50.90',
      warna: blueInstax),
  Produk(
      name: 'Mini Choral 7+',
      fotoProduk: 'assets/InstaxMini7plus_Choral_R.png',
      price: '51.90',
      warna: redInstax),
  Produk(
      name: 'Mini Pink 7+',
      fotoProduk: 'assets/InstaxMini7plus_Pink_R.png',
      price: '52.90',
      warna: pinkInstax),
  Produk(
      name: 'Mini Lavender 7+',
      fotoProduk: 'assets/InstaxMini7plus_Lavender_R.png',
      price: '53.90',
      warna: lavenderInstax),
];
