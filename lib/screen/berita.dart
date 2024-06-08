import 'package:flutter/material.dart';

class BeritaPage extends StatelessWidget {
  const BeritaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita'),
        backgroundColor: Colors.lightBlue,
        elevation: 4.0, // Add elevation for Material Design effect
        leading:  Image.asset('assets/images/logo.jpeg'), // Add the logo image here
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // Fetch new data here
        },
        child: ListView.separated(
          padding: const EdgeInsets.all(16.0), // Use EdgeInsets.all for consistent padding
          separatorBuilder: (context, index) => Divider(
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: 2, // Change item count based on your data
          itemBuilder: (context, index) {
            return beritaItem(
              imageUrl: 'assets/images/tenggelam.png',
              title: 'Mahasiswa PCR Tenggelam saat Kegiatan Kampus di Objek Wisata Kampar',
              linkText: 'Baca Selengkapnya',
              onTap: () {
                // Action when tapping on "Baca Selengkapnya"    
              },
            );
          },
        ),
      ),
    );
  }

  Widget beritaItem({
    required String imageUrl,
    required String title,
    required String linkText,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.white, // Use Material for card background
      elevation: 2.0, // Add elevation for Material Design effect
      borderRadius: const BorderRadius.all(Radius.circular(8.0)), // Add rounded corners
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Use EdgeInsets.all for consistent padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: imageUrl, // Add a hero tag for image transitions
                child: Image.asset(imageUrl),
              ),
              const SizedBox(height: 16.0),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                linkText,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: BeritaPage(),
));
