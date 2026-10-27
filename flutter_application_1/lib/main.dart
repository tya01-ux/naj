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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Coba'),
          backgroundColor: Colors.pink[100],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const Text('Hallo Word'),

              // Flutter Logo
              const FlutterLogo(size: 500),

              // Tombol Home
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.home),
                label: const Text('Home'),
              ),

              // Ikon Favorite
              const Icon(Icons.favorite),

              // Gambar lokal
              Image.asset('assets/images/mobil.jpeg', width: 300, height: 100),

              // Gambar dari internet
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaHFPhPxOo2ROAO4c0oZcP8Jsg12LBJzc1NzjzYfS2FoslTCfsrvZLz1b9&s=10',
                width: 300,
                height: 200,
                errorBuilder: (context, error, stackTrace) {
                  return const Text('Gambar gagal dimuat');
                },
              ),

              // Container warna-warni
              Container(
                height: 300,
                width: 300,
                color: const Color.fromARGB(255, 140, 228, 233),
              ),

              Container(
                height: 250,
                width: 250,
                color: const Color.fromARGB(255, 127, 213, 237),
              ),

              Container(height: 200, width: 200, color: Colors.cyanAccent),

              Container(height: 150, width: 150, color: Colors.red),

              Container(height: 100, width: 100, color: Colors.yellow),

              Container(height: 50, width: 50, color: Colors.green),
            ],
          ),
        ),

        // ListTile Phone
        bottomNavigationBar: const ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
        ),
      ),
    );
  }
}
