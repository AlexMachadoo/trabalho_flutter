import 'package:flutter/material.dart';
import 'package:novo_projeto/views/login_pagina.dart';



void main() {
  runApp(const MyApp() as Widget);
}

class MyApp {
  const MyApp();
}

class HomeScreen extends StatelessWidget {
  final String nome = 'Alex Sandro Machado'; 
  final String email = 'alex.machado@email.com'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela inicial'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(nome),
              accountEmail: Text(email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                child: Text(
                  nome[0], 
                  style: TextStyle(fontSize: 45),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              onTap: () {
              
                Navigator.pop(context); 
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Bem vindo a tela inicial!',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
