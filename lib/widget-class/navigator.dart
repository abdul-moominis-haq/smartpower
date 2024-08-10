
// import 'package:smartpower/widget-class/nav.dart';
// import 'package:flutter/material.dart';


// class Navigators{

//   navigate(){

//     BuildContext context =  ;
//     return Navigator.of(context).push(PageRouteBuilder(
//                   pageBuilder: (context, animation, secondaryAnimation) =>
//                      Nav.page,
//                   transitionsBuilder:
//                       (context, animation, secondaryAnimation, child) {
//                     const begin = Offset(0.0, 1.0);
//                     const end = Offset.zero;
//                     const curve = Curves.ease;

//                     final tween = Tween(begin: begin, end: end);
//                     final curvedAnimation = CurvedAnimation(
//                       parent: animation,
//                       curve: curve,
//                     );

//                     return SlideTransition(
//                       position: tween.animate(curvedAnimation),
//                       child: child,
//                     );
//                   }));
//   }

// }

import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

List <Widget> widget = [
  
];

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        height: kBottomNavigationBarHeight * 1.5,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          showSelectedLabels: true,
        
          
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Wallet"),
            BottomNavigationBarItem(
                icon: Icon(Icons.leaderboard), label: "Chart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
