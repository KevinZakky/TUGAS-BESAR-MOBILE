import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_besar/app/modules/home/views/home_page.dart';
import '../controllers/intro_controller.dart';

// ignore: must_be_immutable
class IntroPage extends GetView<IntroController> {
  List<Color> bgColors = [
    const Color.fromARGB(255, 248, 209, 186),
    const Color.fromARGB(255, 181, 245, 195),
    const Color.fromARGB(255, 236, 163, 161),
    const Color.fromARGB(255, 51, 203, 241),
    const Color.fromARGB(255, 244, 191, 150),
    const Color.fromARGB(255, 240, 52, 52)
  ];

  IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColors[4],
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 156), // Adjust the padding as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Your image widget goes here
              Image.asset(
                'lib/images/intro.png', // Change this to your image path
                width: 350, // Set the width as needed
                height: 350, // Set the height as needed
              ),
              const SizedBox(height: 12),
              const Text(
                'Mengingat dan Belajar',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 54,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                ),
                child: Container(
                  width: 180,
                  height: 50,
                  margin: const EdgeInsets.only(top: 45),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 52, 52),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mulai Bermain',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
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
