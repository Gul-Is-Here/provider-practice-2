import 'package:flutter/material.dart';
import 'package:multiline_provider/slider_screen.dart';
import 'package:provider/provider.dart';

import 'Provider/sliderProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [(ChangeNotifierProvider(create: (_) => SliderProvider()))],
      child: MaterialApp(
          theme: ThemeData(
              primaryColor: Colors.orange, primarySwatch: Colors.amber),
          home: const SliderScreen()),
    );
  }
}
