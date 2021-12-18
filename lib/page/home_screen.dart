import 'package:flutter/material.dart';
import 'package:myinstax_app/data/produk.dart';
import 'detail_home/search_box.dart';
import 'produk_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //membuat objek baru dengan memanggil class data produk
  late List<Produk> produks;

  String query = '';

  @override
  void initState() {
    super.initState();

    produks = allproduk;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.orange,
            ),
            child: const Icon(Icons.dehaze_sharp),
          ),
        ),
        title: Image.asset(
          "assets/fujifilm-banner.png",
          width: 112,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.black),
              child: const Icon(Icons.shopping_bag_outlined),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          buildSearch(),
          Expanded(
            child: ListView.builder(
              itemCount: produks.length,
              itemBuilder: (context, index) {
                final produk = produks[index];
                return produkCard(produk);
              },
            ),
          ),
        ],
      ),
    );
  }

  SearchBox buildSearch() => SearchBox(
        text: query,
        onchanged: searchProduk,
      );

  Container produkCard(Produk produk) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: 360,
      height: 160,
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 180,
            decoration: BoxDecoration(
                color: produk.warna, borderRadius: BorderRadius.circular(14)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Limited Edition',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Text(
                          'Instax',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          produk.name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Text(
                          '\$',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          produk.price,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProdukDetail(
                                      produke: produk,
                                    )),
                          );
                        },
                        child: Text(
                          'Buy',
                          style: TextStyle(
                              color: produk.warna, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Image.asset(produk.fotoProduk, width: 140)
              ],
            ),
          ),
        ],
      ),
    );
  }

  void searchProduk(String query) {
    final produks = allproduk.where((produk) {
      final nameLower = produk.name.toLowerCase();
      final searchLower = query.toLowerCase();

      return nameLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.produks = produks;
    });
  }
}
