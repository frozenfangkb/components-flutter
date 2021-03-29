import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  cargarData() {
    rootBundle.loadString('data/menu_opts.json').then((value) {
      print(value);
    });
  }
}

final menuProvider = new _MenuProvider();
