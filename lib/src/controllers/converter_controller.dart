import 'package:utilidades/src/models/converter_model.dart';

class ConverterController {
  //late indica que convertmodel sera inicializado posteriormente
  late ConverterModel _model;

  void setInputValue(String value) {
    value = value.replaceAll(',', '.');
    final parsedValue = double.tryParse(value) ?? 0.0;
    _model = ConverterModel(
      inputValue: parsedValue,
      fromUnit: _model.fromUnit,
      toUinit: _model.toUinit
    );
  }

  void setUnits(Unit from, Unit to) {
    _model = ConverterModel(
      inputValue: _model.inputValue,
      fromUnit: from,
      toUinit: to
    );
  }

  void InitializeModel() {
    _model = ConverterModel(
      inputValue: 0.0,
      fromUnit: Unit.meter,
      toUinit: Unit.centimeter,
    );
  }

  String get result => _model.convert().toStringAsFixed(2);
}
