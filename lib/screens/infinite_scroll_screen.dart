import 'package:flutter/material.dart';

class InfinitescrollScreen extends StatefulWidget {
  const InfinitescrollScreen({super.key});

  @override
  State<InfinitescrollScreen> createState() => _InfinitescrollScreenState();
}

class _InfinitescrollScreenState extends State<InfinitescrollScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Pantala con una lista infinita '),
    );
  }
}