import 'package:flutter/material.dart';


class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(),

      bottomNavigationBar:  BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MaterialButton(onPressed: (){},
                child: const Column(
                  children: [
                    Icon(Icons.home),
                    Text("Home")
                  ],
                ),
                ),
                 MaterialButton(onPressed: (){},
                child: const Column(
                  children: [
                    Icon(Icons.leaderboard),
                    Text("chart")
                  ],
                ),
                )
              
              ],
            ),
        
        
        
            // right
        
             Row(
              children: [
                MaterialButton(onPressed: (){},
                child: const Column(
                  children: [
                    Icon(Icons.shopping_cart),
                    Text("Cart")
                  ],
                ),
                ),
                 MaterialButton(onPressed: (){},
                child: const Column(
                  children: [
                    Icon(Icons.person),
                    Text("Acount")
                  ],
                ),
                )
              
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},   
      shape: const CircleBorder(),
      child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}