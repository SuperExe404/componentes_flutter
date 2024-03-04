import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/infinite_list_screen.dart';
import 'package:flutter_application_3/screens/inputs_screens.dart';
import 'package:flutter_application_3/screens/notification_screen.dart';
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
           leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.account_circle
              ),
            ),
            title: Text('Entradas',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text('11-02-2024 / Las vegas ',
              style: AppTheme.lightTheme.textTheme.bodySmall
            ),
            // OPCIONES DE CIRCULARPROGRESSIONDICATOR
            // trailing: const CircularProgressIndicator(
            //   strokeWidth: 25.0,
            //   value: 0.46,
            //   color: Color.fromARGB(255, 0, 0, 0),
            //   backgroundColor: color.fromA
            // ),
            trailing: const Icon(Icons.account_circle_outlined,
              color: AppTheme.chemaColor
            ),
            onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const InputsScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.account_circle
              ),
            ),
            title: Text('ListViwe.builder',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text('Scroll infinito ',
              style: AppTheme.lightTheme.textTheme.bodySmall
            ),
            trailing: const Icon(Icons.account_circle_outlined,
              color: AppTheme.chemaColor
            ),
            onTap: () {
              final ruta2 = MaterialPageRoute(builder: (context){
                return const InfiniteListScreen();
              });
              Navigator.push(context, ruta2);
            },
          ),
          const Divider(),
          ListTile(
           leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.account_circle
              ),
            ),
            title: Text('Notificaciones',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text('Creacion de notificaciones ',
              style: AppTheme.lightTheme.textTheme.bodySmall
            ),
            trailing: const Icon(Icons.account_circle_outlined,
              color: AppTheme.chemaColor
            ),
            onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context){
                return const NotificationScreen();
              });
              Navigator.push(context, ruta3);
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
