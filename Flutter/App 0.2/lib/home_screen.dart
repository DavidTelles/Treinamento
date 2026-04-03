import 'package:flutter/material.dart';
import 'main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _snackBarLogout(BuildContext context) {
    final _msg = SnackBar(
      backgroundColor: Colors.blueAccent,
      content: const Text('Obrigado por usar nosso aplicativo. Volte Senpre!',
          style: TextStyle(color: Colors.white)),
    );

    ScaffoldMessenger.of(context).showSnackBar(_msg);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.black,
        actions: [
          IconButton.filled(
              icon: const Icon(Icons.logout, color: Colors.redAccent),
              onPressed: () {
                _snackBarLogout(context);

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyForm()),
                );
              }),
        ],
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            Container(
              child: const Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.android, size: 80), Text('Android')],
              ),
            ),
            Container(
              child: const Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.apple, size: 80), Text('Apple')],
              ),
            ),
            Container(
              child: const Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.star, size: 80), Text('Estrela')],
              ),
            ),
            Container(
              child: const Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.airline_seat_flat, size: 80),
                  Text('Homem Dormindo')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
