import 'package:flutter/material.dart';
import 'package:flutter_application_1/anasayfa.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromRGBO(253, 253, 253, 0.663),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'images/logo.png',
                    height: 250,
                    width: 250,
                  ),
                ),
              ),
              const SizedBox(height: 10),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Kullanıcı Adı',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Şifre',
                  obscureText: true,
                ),
                const SizedBox(height: 10),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        'Şifreni mi unuttun?',
        style: TextStyle(color: Colors.grey),
      ),
    ],
  ),
),
const SizedBox(height: 25),
MyButton(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AnaSayfa(),
      ),
    );
  },
  text: 'Giriş Yap',
  color: Colors.white,
),
const SizedBox(height: 70),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 5.0),
  child: Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Misafir Olarak Devam Et',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  ),
),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Üye değil misin?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    
                    const Text(
                      'Hemen Kayıt Ol',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
