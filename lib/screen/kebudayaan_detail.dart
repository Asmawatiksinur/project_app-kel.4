import 'package:flutter/material.dart';

class RumahAdatScreen extends StatelessWidget {
  const RumahAdatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Add your back button action here
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              // Add your forward button action here
            },
          ),
        ],
        title: Image.asset(
          'assets/images/logo.png', // Replace with your logo asset
          height: 50,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/images/rumah_adat.jpg', // Replace with your image asset
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.0,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Rumah Adat Selaso Jatuh Kembar',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Rumah Adat Daerah Riau Bernama Selaso Jatuh Kembar. Rumah Ini Merupakan Tempat Tinggal Para Datuk, Pemangku Adat. Ruangan Rumah Terdiri Dari: Ruangan Besar Yang Dipergunakan Untuk Tempat Tidur, Ruang Bersila, Anjungan Dan Dapur. Tiang-Tiang Rumah, Sirip Atap, Loteng, Tangga Dan Alasnya Semua Berhiasan Ukiran. Ukirannya Mempunyai Corak Yang Berbeda-Beda Antara Yang Satu Dengan Yang Lainnya. Ruang Adat Ini Dilengkapi Pula Dengan Balai Adat Yang Dipergunakan Untuk Untuk Pertemuan Dan Musyawarah Adat.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
