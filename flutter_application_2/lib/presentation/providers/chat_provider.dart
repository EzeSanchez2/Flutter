import 'package:flutter/material.dart';
import 'package:flutter_application_2/dominio/entidad/mensajes.dart';

//ChangeNotifier notifica cuando hay cambios
class ChatProvider extends ChangeNotifier { 
  List<Mensajes> mensajes= [
    Mensajes(text: "Hola mi linda", fromWho: FromWho.mine),
    Mensajes(text: "Ya regresaste del trabajo?", fromWho: FromWho.mine),
    Mensajes(text: "Hola mi linda", fromWho: FromWho.mine),
    Mensajes(text: "Ya regresaste del trabajo?", fromWho: FromWho.mine)
  ];

Future<void> mandarMensaje(String texto) async{


}

}