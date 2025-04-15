import 'package:flutter/material.dart';
import 'objectbox_helper.dart';
import 'screens/note_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initObjectBox();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ObjectBox CRUD',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const NoteListScreen(),
    );
  }
}