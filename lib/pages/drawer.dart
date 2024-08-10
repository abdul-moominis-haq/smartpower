import 'package:flutter/material.dart';

class Transac extends StatefulWidget {
  final String name;
   const Transac({super.key, required this.name});

  @override
  State<Transac> createState() => _TransacState();
}

class _TransacState extends State<Transac> {
  final DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage("images/1.jpg"),
      ),
      title: Text(date.toString()),
      subtitle: const Text("GHC 200.00 reacharged successfully"),
    );
  }
}
