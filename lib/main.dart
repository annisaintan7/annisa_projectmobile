<<<<<<< HEAD
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiered Pricing Card',
      home: const PricingCardPage(),
    );
  }
}

class PricingCardPage extends StatelessWidget {
  const PricingCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Layanan IT'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),

                  // Icon layanan
                  const Icon(
                    Icons.laptop_mac,
                    size: 60,
                    color: Colors.blue,
                  ),

                  const SizedBox(height: 12),

                  // Nama paket
                  const Text(
                    'Paket Profesional',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Deskripsi
                  const Text(
                    'Solusi IT profesional untuk kebutuhan bisnis Anda.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Harga dan durasi
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(
                        'Rp 5.000.000',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '/ proyek',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Judul fitur
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Fitur Layanan:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Daftar fitur
                  Column(
                    children: const [
                      FeatureItem(
                        text: 'Desain UI/UX Khusus',
                      ),
                      FeatureItem(
                        text: 'Setup Database',
                      ),
                      FeatureItem(
                        text: 'Integrasi API',
                      ),
                      FeatureItem(
                        text: 'Support & Maintenance',
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Tombol
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Paket dipilih');
                      },
                      child: const Text('Pilih Paket'),
                    ),
                  ),
                ],
              ),

              // Badge rekomendasi
              Positioned(
                top: -10,
                right: -10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'REKOMENDASI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String text;

  const FeatureItem({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(text),
          ),
        ],
      ),
    );
  }
=======
import 'models/user_model.dart';

void main() {
  // Simulasi JSON dari API (ada data yang hilang, misalnya 'id' dan 'email' null)
  Map<String, dynamic> jsonResponse = {
    'name': 'Budi Santoso',
    'age': 22,
    // 'id', 'email', dan 'isActive' tidak dikirim oleh server
  };

  // Konversi JSON ke Objek (Aplikasi tidak akan crash berkat Null Safety)
  UserModel user = UserModel.fromJson(jsonResponse);

  print('Nama: ${user.name}'); // Output: Budi Santoso
  print('ID: ${user.id}'); // Output: (string kosong)
  print('Status: ${user.isActive}'); // Output: false

  // Konversi kembali Objek ke JSON
  print('To JSON: ${user.toJson()}');
>>>>>>> 0cb6d884dce87caffa3a4fa5baa4aeeb0d178ca3
}