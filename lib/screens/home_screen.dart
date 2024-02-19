import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(
        children:[
          ListTile(
            leading: const Icon(Icons.accessible_rounded),
            title: Text('Entradas',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('11-02-2024 / Las vegas '),
            trailing: const Icon(Icons.account_circle_outlined),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.accessible_rounded),
            title: Text('ListViwe.builder',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Scroll infinito '),
            trailing: const Icon(Icons.account_circle_outlined),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.accessible_rounded),
            title: Text('Notificaciones',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Creacion de notificaciones '),
            trailing: const Icon(Icons.account_circle_outlined),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
