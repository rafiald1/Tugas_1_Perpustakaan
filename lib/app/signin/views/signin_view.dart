import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/sigin_controller.dart';

class SigninView extends GetView<SiginController> {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 56, 118, 241),
                const Color.fromARGB(255, 243, 246, 248)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          // Column untuk menampung children
          child: Column(
            children: [
              // Tombol Kembali
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back,
                        color: const Color.fromARGB(255, 55, 156, 239)),
                    onPressed: () {
                      // Aksi untuk tombol kembali
                      Get.back();
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Gambar Buku
              Center(
                child: Image.asset(
                  'assets/images/coverSign.jpg', // Ganti dengan path gambar yang sesuai
                  height: 120,
                  width: 120,
                ),
              ),
              SizedBox(height: 20),
              // Form input Username
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'USERNAME',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Form input Email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'E-MAIL',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Form input Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Form input Konfirmasi Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'CONFIRM PASSWORD',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Tombol Sign In
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol Sign In ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    minimumSize:
                        Size(double.infinity, 50), // Ukuran tombol penuh
                  ),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
