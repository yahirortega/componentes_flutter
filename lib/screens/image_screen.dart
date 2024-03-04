import 'package:flutter/material.dart';

class imageScreen extends StatefulWidget {
  const imageScreen({super.key});

  @override
  State<imageScreen> createState() => _imageScreenState();
}

class _imageScreenState extends State<imageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: const Column(
        children: [
          Image(image: AssetImage('ssets/img/raro.jpeg'))
        ],
      )
      
    );
    
  }
}