import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_project/screens/home_screen/home_screen.dart';

import 'domain/photo_model/photo_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(PhotoModelAdapter());
  }
  await Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
