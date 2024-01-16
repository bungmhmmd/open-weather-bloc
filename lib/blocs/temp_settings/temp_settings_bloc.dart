import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'temp_settings_event.dart';
part 'temp_settings_state.dart';

class TempSettingsBloc extends Bloc<TempSettingsEvent, TempSettingsState> {
  TempSettingsBloc() : super(TempSettingsState.initial()) {
    on<ToggleTempUnitEvent>(_toggleTempUnit);
  }

  Future<void> _toggleTempUnit(
      ToggleTempUnitEvent event, Emitter<TempSettingsState> emit) async {
    emit(state.copyWith(
        tempUnit: state.tempUnit == TempUnit.celcius
            ? TempUnit.fahrenheit
            : TempUnit.celcius));
    print('TempUnit: $state');
  }
}
