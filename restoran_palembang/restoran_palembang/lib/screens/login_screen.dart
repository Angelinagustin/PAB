import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 3,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: 1. LOGO APLIKASI RESTORAN PALEMBANG
              SizedBox(
                width: 200,
                height: 200,
                child:
                    Image.asset('images/logo-aplikasi-restoran-palembang.png'),
              ),

              // TODO: 2. TEXTFIELD USERNAME
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 235, 113, 0), width: 2)),
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    floatingLabelStyle:
                        TextStyle(color: Color.fromARGB(255, 235, 113, 0)),
                    hintText: 'Masukkan username anda'),
              ),

              // TODO: 3. TEXTFIELD PASSWORD
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 235, 113, 0), width: 2)),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    floatingLabelStyle:
                        TextStyle(color: Color.fromARGB(255, 235, 113, 0)),
                    hintText: 'Masukkan password anda'),
                obscureText: true,
              ),

              // TODO: 4. TEXTBUTTON SIGN UP
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  text: 'Belum memiliki akun? Klik disini untuk ',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'sign up',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),

              // TODO: 5. TOMBOL LOGIN
              const SizedBox(height: 16),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 235, 113, 0),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
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
