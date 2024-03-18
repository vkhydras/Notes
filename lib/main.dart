import 'package:flutter/material.dart';
import 'package:notes_app/views/home_page.dart';
import 'package:notes_app/views/login_view.dart';
import 'package:notes_app/views/register_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    ));
} 



