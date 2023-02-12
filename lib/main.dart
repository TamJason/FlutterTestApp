import 'package:flutter/material.dart';
import 'package:flutter_application_1/viewmodel/favorites_view_model.dart';
import 'package:flutter_application_1/widget/my_home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteViewModel(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        ),
        home: MyHomePage(),
      ),
    );
  }
}