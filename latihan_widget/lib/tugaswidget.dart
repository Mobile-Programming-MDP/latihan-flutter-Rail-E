import 'package:flutter/material.dart'; 

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("Galeri Foto"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Image.network(
            "https://picsum.photos/id/88/300/200",
            width: 500,
            fit: BoxFit.cover,
          ),
          Container(
            height: 70,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "Jalan di Barcelona",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(
                  Icons.place,
                  color: Colors.red,
                ),
                SizedBox(width: 8), 
                Text("Lokasi: Barcelona, Spanyol"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16), 
            child: Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  color: Colors.blue,
                ),
                SizedBox(width: 8), 
                Text("Publikasi: 13 Agustus 2013"),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: 140,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                const Text(
                  "Deskripsi",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8), 
                const Text(
                  "Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
