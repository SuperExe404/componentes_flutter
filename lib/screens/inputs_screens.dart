import 'package:flutter/material.dart';
import 'package:flutter_application_3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOption = 0; // Se corrigió el nombre de la variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            Text(
              '¿Qué tan preparado estás para correr tus apps de Flutter?',
              style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            entradasCheck(),
            ElevatedButton(
              onPressed: () {}, // Se agregó una función para onPressed
              child: const Text(
                'Guardar',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.mainColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: AppTheme.medelColor),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: AppTheme.medelColor),
            label: "Datos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app, color: AppTheme.medelColor),
            label: "Salir",
          )
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
      ),
    );
  }

  TextField entradaTexto() {
    return TextField(
      style: AppTheme.lightTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu nombre: ',
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 25.0,
        ),
        Switch(
            value: valueSwitch,
            onChanged: (value) {
              setState(() {
                valueSwitch = value;
                print('Estado del switch: $valueSwitch');
              });
            }),
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text(
          '¿Qué tanto te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
            min: 0,
            max: 10,
            value: valueSlider,
            divisions: 10,
            activeColor: AppTheme.chemaColor,
            inactiveColor: AppTheme.mainColor,
            thumbColor: const Color.fromARGB(255, 46, 47, 102),
            label: '${valueSlider.round()}',
            onChanged: (value) {
              setState(() {
                valueSlider = value;
                print('Valor del slider: $valueSlider');
              });
            }),
      ],
    );
  }

  Column entradasRadio() {
    return Column(
      children: [
        Text(
          '¿Qué prefieres usar para desarrollo móvil?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: const Text(
            'Kotlin',
            style: TextStyle(fontSize: 20),
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1,
              groupValue: selectedRadioOption,
              onChanged: (value) {
                setState(() {
                  selectedRadioOption = value as int; // Cast a int
                  print('Opción seleccionada: $selectedRadioOption');
                });
              },
            ),
          ),
        ),
        ListTile(
          title: const Text(
            'Flutter',
            style: TextStyle(fontSize: 20),
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2,
              groupValue: selectedRadioOption,
              onChanged: (value) {
                setState(() {
                  selectedRadioOption = value as int; // Cast a int
                  print('Opción seleccionada: $selectedRadioOption');
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  Row entradasCheck() {
    return Row(
      children: [
        Text(
          'Web',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        Checkbox(
          value: isChecked1,
          onChanged: (value) {
            setState(() {
              isChecked1 = value!;
              print('Valor de Navegador: $isChecked1');
            });
          },
        ),
        Text(
          'Web2',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        Checkbox(
          value: isChecked2,
          onChanged: (value) {
            setState(() {
              isChecked1 = value!;
              print('Valor de Navegador: $isChecked2');
            });
          },
        ),
        Text(
          'Web3',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        Checkbox(
          value: isChecked3,
          onChanged: (value) {
            setState(() {
              isChecked1 = value!;
              print('Valor de Navegador: $isChecked3');
            });
          },
        ),
      ],
    );
  }
}
