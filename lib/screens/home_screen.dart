import 'package:flutter/material.dart';
import 'package:flutter_application_3/theme/app_theme.dart';

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
            subtitle: Text('11-02-2024 / Las vegas ',
              style: AppTheme.lightTheme.textTheme.bodySmall
            ),
            trailing: const Icon(Icons.account_circle_outlined,
              color: AppTheme.chemaColor
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.accessible_rounded),
            title: Text('ListViwe.builder',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text('Scroll infinito ',
              style: AppTheme.lightTheme.textTheme.bodySmall
            ),
            trailing: const Icon(Icons.account_circle_outlined,
              color: AppTheme.chemaColor
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.accessible_rounded),
            title: Text('Notificaciones',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text('Creacion de notificaciones ',
              style: AppTheme.lightTheme.textTheme.bodySmall
            ),
            trailing: const Icon(Icons.account_circle_outlined,
              color: AppTheme.chemaColor
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
