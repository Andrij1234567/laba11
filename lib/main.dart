import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'custom_container_widget.dart';
import 'custom_slider_widget.dart';
import 'slider_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SliderProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConstructorScreen(),
    );
  }
}

class ConstructorScreen extends StatelessWidget {
  const ConstructorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainerWidget(),
            SizedBox(height: 20),
            CustomSliderWidget(),
          ],
        ),
      ),
    );
  }
}
