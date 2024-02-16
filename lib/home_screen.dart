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
          const Text('Hola Mundo'),
          ListTile(
            leading: const Icon(Icons.accessible_rounded),
            title: Text('Hola Mundo',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('11-02-2024 / Las vegas '),
            trailing: const Icon(Icons.account_circle_outlined),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.access_time_outlined),
            title: Text('Hola Mundo'),
            subtitle: Text('11-02-2024 / Las vegas '),
            trailing: Icon(Icons.grade_outlined),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.ad_units_sharp),
            title: Text('Hola Mundo',),
            subtitle: Text('11-02-2024 / Las vegas '),
            trailing: Icon(Icons.screen_lock_portrait_sharp),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
