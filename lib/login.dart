import 'package:flutter/material.dart';
// import 'detail_page.dart';
// import 'register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String movelogin = "Login Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => RegisterPage(
              //       key: key,
              //     ),
              //   ),
              // );
            },
            child: const Text('Push'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const DetailPage(),
              //   ),
              // );
            },
            child: const Text('Push Replacement'),
          ),
        ],
      )),
    );
    return const Placeholder();
  }
}
