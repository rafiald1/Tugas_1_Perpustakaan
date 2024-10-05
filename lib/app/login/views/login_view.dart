import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controller untuk GetX
class LoginController extends GetxController {}

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Bagian atas dengan background gambar dan lengkungan
          ClipPath(
            clipper: _CustomClipper(),
            child: Container(
              height:
                  MediaQuery.of(context).size.height * 0.4, // Sesuaikan ukuran
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/coverlog.jpg'), // Ganti dengan path gambar yang benar
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Bagian bawah dengan warna biru
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height:
                  MediaQuery.of(context).size.height * 0.65, // Sesuaikan ukuran
              decoration: const BoxDecoration(
                color: Color(0xFF002B5B), // Warna biru sesuai gambar
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40.0),
                    // Welcome Text
                    const Text(
                      'Welcome Back!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    // Input Username
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person,
                            color: Colors.lightBlueAccent),
                        hintText: 'Username or Email',
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    // Input Password
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock,
                            color: Colors.lightBlueAccent),
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Navigasi ke halaman forgot password
                        },
                        child: const Text(
                          'Forgot the Password?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    // Login Button
                    ElevatedButton(
                      onPressed: () {
                        // Aksi untuk login
                        Get.toNamed('/home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 80.0,
                          vertical: 16.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text('Login'),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Or',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 16.0),
                    // Sign in with Google Button
                    ElevatedButton(
                      onPressed: () {
                        // Aksi untuk sign in dengan Google
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0.9),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 60.0,
                          vertical: 16.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Sign in with Google',
                        style: TextStyle(color: Colors.lightBlueAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Tombol panah kembali
          Positioned(
            top: 40.0,
            left: 16.0,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                // Navigasi ke halaman sebelumnya
                Get.back();
              },
            ),
          ),
        ],
      ),
    );
  }
}

// CustomClipper untuk membuat lengkungan di bagian atas
class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 50); // Titik awal
    var controlPoint = Offset(size.width / 2, size.height);
    var endPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0.0); // Garis ke sisi kanan atas
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
