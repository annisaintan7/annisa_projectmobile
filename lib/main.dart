```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ===============================
// APP UTAMA
// ===============================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Katalog Produk',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFF7FA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF4B6C2),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF4B6C2),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        cardTheme: const CardThemeData(
          color: Color(0xFFFFEEF2),
          elevation: 3,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// ===============================
// SCREEN 1 - BERANDA
// StatelessWidget
// ===============================
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Data katalog
  final List<Map<String, String>> products = const [
    {
      'name': 'Pink Blossom',
      'price': 'Rp50.000',
      'description':
          'Produk dengan desain bunga pink yang lembut dan menarik.',
    },
    {
      'name': 'Sweet Pastel',
      'price': 'Rp75.000',
      'description':
          'Produk dengan perpaduan warna pastel yang cantik dan elegan.',
    },
    {
      'name': 'Lovely Rose',
      'price': 'Rp100.000',
      'description':
          'Produk bernuansa rose yang cocok untuk berbagai kebutuhan.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Produk'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFF4B6C2),
                child: Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                ),
              ),
              title: Text(
                product['name']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(product['price']!),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),

              // Stack Navigation menggunakan Navigator.push
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      name: product['name']!,
                      price: product['price']!,
                      description: product['description']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// ===============================
// SCREEN 2 - DETAIL KATALOG
// StatefulWidget
// ===============================
class DetailScreen extends StatefulWidget {
  final String name;
  final String price;
  final String description;

  const DetailScreen({
    super.key,
    required this.name,
    required this.price,
    required this.description,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Katalog'),

        // Tombol kembali ke Screen 1
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        ],
      ),

      // Screen 2 menggunakan Column
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.shopping_bag,
              size: 80,
              color: Color(0xFFF4B6C2),
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

            Text(
              widget.price,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD66A83),
              ),
            ),

            const SizedBox(height: 20),

            // Container pastel untuk deskripsi
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFE4EC),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    widget.description,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```