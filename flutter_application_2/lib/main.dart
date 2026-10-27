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
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gambar
              Image.asset(
                'assets/lupi.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),

              // Nanam
              const Text(
                'Nama : Fitria Ramadhani',
                style: TextStyle(fontSize: 13)
              ),

              // NIM
              const Text(
                'NIM : 25090088',
                style: TextStyle(fontSize: 13)
              ),

              // TTL
              const Text(
                'TTL : Wosu, 01 November 2005',
                style: TextStyle(fontSize: 13),
              ),


              // Kelas
              const Text(
                'Kelas : C', 
                style: TextStyle(fontSize: 13)
                ),
            ],
          ),
        ),
      ),
    );
  }
}
