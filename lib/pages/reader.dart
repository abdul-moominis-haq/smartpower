import 'package:flutter/material.dart';
import 'package:smartpower/pages/alt_wallet.dart';

class Meter extends StatefulWidget {
  const Meter({super.key});

  @override
  State<Meter> createState() => _MeterState();
}

class _MeterState extends State<Meter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RefreshIndicator(
          onRefresh: () async {},
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.all(12),
                child: MeterReading(
                  color: Color.fromARGB(95, 66, 66, 67),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
