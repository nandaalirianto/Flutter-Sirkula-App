import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../beranda.dart';
import 'registerScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 60),
                      Image.asset(
                        'assets/images/sirkula.png',
                        width: 70,
                        height: 70,
                      ),
                      const SizedBox(height: 16),
                      const Center(
                        child: Text(
                          'Selamat datang',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('belum mempunyai akun ? '),
                          GestureDetector(
                            child: const Text(
                              'Register disini',
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 104, 4),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const registerScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 48),
                      Column(
                        spacing: 24,
                        children: [
                          TextFormField(
                            // obscureText: !isPasswordVisible,
                            decoration: InputDecoration(
                              labelText: 'Username',
                              hintText: 'masukkan username anda',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          TextFormField(
                            obscureText: !isPasswordVisible,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'masukkan password anda ',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 150),

                      Column(
                        spacing: 16,
                        children: [
                          SizedBox(
                            width: 262,
                            height: 51,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => homesirkula(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 49, 144, 5,),
                              ),
                              child: const Text(
                                "Masuk",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Text("atau masuk dengan", style: TextStyle()),
                          Row(
                            spacing: 24,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => homesirkula(),
                                    ),
                                  );
                                },
                                icon: SvgPicture.asset(
                                  'assets/images/Google_logo.svg',
                                  width: 32,
                                  height: 32,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => homesirkula(),
                                    ),
                                  );
                                },
                                icon: SvgPicture.asset(
                                  'assets/images/facebook.svg',
                                  width: 32,
                                  height: 32,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => registerScreen(),
                                    ),
                                  );
                                },
                                icon: SvgPicture.asset(
                                  'assets/images/apple.svg',
                                  width: 32,
                                  height: 32,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
