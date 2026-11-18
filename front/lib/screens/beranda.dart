import 'package:flutter/material.dart';

class homesirkula extends StatefulWidget {
  const homesirkula({super.key});

  @override
  State<homesirkula> createState() => _homesirkulaState();
}

class _homesirkulaState extends State<homesirkula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Banner-makanan.png',
                      width: 370,
                      height: 174,
                    ),
                    Positioned(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            255,
                            255,
                            255,
                          ),
                          foregroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 6,
                          ),
                        ),
                        icon: const Icon(Icons.arrow_circle_right_outlined, size: 16,),
                        label: const Text("Cari makan", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                      ),
                    ),
                  ],
                ),
              ),
            ),     
            Container(
              // child: ,
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}