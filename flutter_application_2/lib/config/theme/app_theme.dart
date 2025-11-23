import 'package:flutter/material.dart';

const Color _colorCustom=Color(0xFFb74093);

const List<Color> _listColor= [
  _colorCustom,
  Colors.deepOrange,
  Colors.blueAccent,
  Colors.yellow,
  Colors.cyanAccent
];

class AppTheme{
  final int selectColor;

  AppTheme(
    {required this.selectColor}
  ):assert(selectColor >= 0 && selectColor <= _listColor.length - 1, "Tiene que ser entre 0 y ${_listColor.length}" );
  



  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _listColor[selectColor],
      
    );
  }
}