import 'package:flutter/material.dart';

class NewsAlt extends StatefulWidget {
  const NewsAlt({super.key});

  @override
  State<NewsAlt> createState() => _NewsAltState();
}

class _NewsAltState extends State<NewsAlt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliverFillViewport(
        
        
        delegate: SliverChildBuilderDelegate(
          
          (context, index) => Container(),
        ),
      ),
    );
  }
}
