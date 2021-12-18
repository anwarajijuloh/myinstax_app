import 'package:flutter/material.dart';
import 'package:myinstax_app/data/produk.dart';

class ProdukDetail extends StatelessWidget {
  const ProdukDetail({Key? key, required this.produke}) : super(key: key);

  final Produk produke;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                  color: produke.warna, width: 2, style: BorderStyle.solid),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: produke.warna,
              ),
            ),
          ),
        ),
        title: Image.asset(
          'assets/fujifilm-banner.png',
          width: 112,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.black),
              child: const Icon(Icons.more_vert),
            ),
          )
        ],
      ),
      body: produkPages(),
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset(3.0, 3.0),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ),
        ], color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.center,
              child: Row(
                children: [
                  const Text(
                    '\$',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    produke.price,
                    style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: produke.warna,
              ),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView produkPages() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Image.asset(produke.fotoProduk, width: 180),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Instax",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 6.0, left: 2),
                  alignment: Alignment.topLeft,
                  child: Text(
                    produke.name,
                    style: TextStyle(
                        color: produke.warna,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Be real and fun with the INSTAX MINI 7+. Cool design, colorfull and compact, this instans camera is fun and easy to use. Point and shoot and give your day some fun!",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Point & Shoot",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7 + make it easy for you to be creative and live in the moment",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Mini But With Full-Size Memories",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings your instant 2 x 2 sized photos you can show and tell",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Using professional high-quality film technology(as you’d expect from fujifilm(, your festival frolicking, sun workshipping, crowd surfing memories that you print will transport you right back into that moment ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Mini Film",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Mini Moment with maximum impact. Whats’s your next mini moment?",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Plenty of Great Color Choices",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Avaible in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "The Mini 7 + Has Your Back!",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Depending upon the weather conditions, you can easily control brightness to obtain a great picture",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Fun All The Time!",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.topLeft,
              child: const Text(
                "Live in the moment and enjoy your Mini 7 + and give your day some instant fun!",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
