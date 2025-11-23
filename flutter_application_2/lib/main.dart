import 'package:flutter/material.dart';
import 'package:flutter_application_2/config/theme/app_theme.dart';

import 'package:flutter_application_2/presentation/screens/chat/chat_scree.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme:AppTheme(selectColor: 2).theme() ,
      home: ChatScreen(),
      
    );
  }
}

  