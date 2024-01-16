import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_weather_bloc/blocs/blocs.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListTile(
        title: Text('Temperatur Unit'),
        subtitle: Text('Celcius/Fahrenheit (Default: Celcius)'),
        trailing: Switch(
          value: context.watch<TempSettingsBloc>().state.tempUnit ==
              TempUnit.celcius,
          onChanged: (value) {
            context.read<TempSettingsBloc>().add(ToggleTempUnitEvent());
          },
        ),
      ),
    );
  }
}
