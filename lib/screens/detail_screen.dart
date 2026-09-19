import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String name;

  const DetailScreen({
    super.key,
    required this.name,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'DETAIL PROFIL PENGGUNA',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            const CircleAvatar(
              radius: 65,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              widget.name,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Mahasiswa',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'INFORMASI PROFIL',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      'Nama: ${widget.name}',
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      'Status: Mahasiswa',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      'Status Akun: Aktif',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Halo, saya ${widget.name}. '
                  'Saya adalah pengguna aplikasi ini.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFollowing = !isFollowing;
                });
              },
              child: Text(
                isFollowing
                    ? 'Sudah Mengikuti'
                    : 'Ikuti Pengguna',
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}