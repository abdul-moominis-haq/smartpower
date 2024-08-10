import 'package:smartpower/pages/payment.dart';
import 'package:smartpower/pages/charts_statistics.dart';
import 'package:smartpower/pages/wallet.dart';
import 'package:smartpower/pages/account.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final List<Map<String, Widget>> _pages = [
    {
      "page": const Pay(),
    },
    {
      "page": const StatisticsCharts(),
    },
    {
      "page": const WalletTransaction(),
    },
    {
      "page": const Account(),
    }
  ];
  int selectedPageIndex = 0;

  @override
  void initState() {
     
    _pages;

    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedPageIndex]["pages"],
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: kBottomNavigationBarHeight * 2,
          child: BottomNavigationBar(
              onTap: _selectedPage,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              selectedItemColor: Colors.blue,
              currentIndex: selectedPageIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Pay"),
               
                
              ]),
        ),
      ),
             floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        elevation: 1,
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
