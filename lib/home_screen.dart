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
        children: const[
          Text('Hola Mundo'),
          ListTile(
            leading: Icon(Icons.accessible_rounded),
            title: Text('Hola Mundo',
            style: TextStyle(color: Colors.red),),
            subtitle: Text('11-02-2024 / LAs vegas '),
            trailing: Icon(Icons.account_circle_outlined),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.access_time_outlined),
            title: Text('Hola Mundo',
            style: TextStyle(color: Colors.green),),
            subtitle: Text('11-02-2024 / LAs vegas '),
            trailing: Icon(Icons.grade_outlined),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.ad_units_sharp),
            title: Text('Hola Mundo',
            style: TextStyle(color: Colors.blue),),
            subtitle: Text('11-02-2024 / LAs vegas '),
            trailing: Icon(Icons.screen_lock_portrait_sharp),
          ),
          Divider(),
        ],
      ),
    );
  }
}
