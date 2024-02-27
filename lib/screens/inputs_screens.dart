import 'package:flutter/material.dart';
import 'package:flutter_application_3/theme/app_theme.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Entradas',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        TextField(
          style: AppTheme.lightTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: 'Escribe tu Nombre',
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        ),
         const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             ElevatedButton(
              onPressed: null, 
              child: Text('Regresar',
              ),
            ),
             ElevatedButton(
              onPressed: null, 
              child: Text('Ir a data screen',
              ),
            ),
          ],
        ),
      ],
    );
  }
}