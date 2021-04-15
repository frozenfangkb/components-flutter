import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            )
          ],
        ),
      ),
    );
  }

  _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        divisions: 20,
        onChanged: _bloquearCheck
            ? null
            : (value) {
                setState(() {
                  _valorSlider = value;
                });
              },
        value: _valorSlider,
        min: 10.0,
        max: 400.0);
  }

  _crearImagen() {
    return Image(
        image: NetworkImage(
            'https://www.lavanguardia.com/files/og_thumbnail/uploads/2017/04/10/5fa3c6ca21373.jpeg'),
        width: _valorSlider,
        fit: BoxFit.contain);
  }

  _crearCheckbox() {
    /* return Checkbox(
        value: _bloquearCheck,
        onChanged: (value) {
          setState(() {
            _bloquearCheck = value;
          });
        }); */
    return CheckboxListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (value) {
          setState(() {
            _bloquearCheck = value;
          });
        });
  }

  _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (value) {
          setState(() {
            _bloquearCheck = value;
          });
        });
  }
}
