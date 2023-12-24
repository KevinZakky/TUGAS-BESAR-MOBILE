import 'package:flutter/material.dart';
import 'package:tugas_besar/app/modules/home/views/intro_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 191, 150),
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 0,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            // Navigasi kembali ke IntroPage
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => IntroPage(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          padding: const EdgeInsets.only(left: 15),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Tambahkan logika untuk mengatur suara di sini
              // Misalnya, menampilkan dialog pengaturan suara.
              // Contoh sederhana:
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AlertDialog(
                    title: Text('Sound Settings'),
                    content: Text('Adjust sound settings here.'),
                    actions: [],
                  );
                },
              );
            },
            icon: const Icon(Icons.volume_up),
            color: Colors.black,
            padding: const EdgeInsets.only(right: 15),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Tambahkan gambar di atas tombol "Easy"
              Image.asset(
                'lib/images/level-bg.png', // Gantilah dengan path gambar yang sesuai
                width: 350,
                height: 350,
                // Sesuaikan dengan ukuran gambar Anda
              ),
              const Text(
                "Pilih level Anda",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),
              _buildButton(
                text: 'Easy',
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                ),
              ),
              _buildButton(
                text: 'Medium',
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                ),
                margin: const EdgeInsets.only(top: 15),
              ),
              _buildButton(
                text: 'Hard',
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                ),
                margin: const EdgeInsets.only(top: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton({
    required String text,
    required VoidCallback onPressed,
    EdgeInsetsGeometry? margin,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 200,
        height: 50,
        margin: margin,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 52, 52),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
