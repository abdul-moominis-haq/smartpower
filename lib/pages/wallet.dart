import 'package:smartpower/pages/drawer.dart';
import 'package:flutter/material.dart';

class WalletTransaction extends StatefulWidget {
 
  

  const WalletTransaction({super.key});

  @override
  State<WalletTransaction> createState() => _WalletTransactionState();
}



class _WalletTransactionState extends State<WalletTransaction> {
  List <String> images =  [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
  ];
  DateTime time = DateTime.timestamp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/bg.png"), fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.refresh,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const ListTile(
                      leading: Text(
                        "Credit Wallet",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                      child: Center(
                        child: Text(
                          "Ghc 3000.00",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        time.toString(),
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 15,top: 30),
            child: Column(
              children: [
                Transac(name: images[0],),
                Transac(name: images[1]),
                Transac(name: images[2]),
                Transac(name: images[3]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
