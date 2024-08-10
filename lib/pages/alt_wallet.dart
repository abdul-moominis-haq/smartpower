import 'package:flutter/material.dart';
import 'package:smartpower/pages/widgets.dart';

class WalletP extends StatefulWidget {
  const WalletP({super.key});

  @override
  State<WalletP> createState() => _WalletPState();
}

class _WalletPState extends State<WalletP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 physics:  BouncingScrollPhysics(),
                child: Row(
                  children: [
                    PaymentsWay(
                      color: Color.fromRGBO(10, 0, 82, 1),
                    ),
                    // MeterReading(
                    //   color: Colors.black,
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // )
                  ],
                ),
              ),
            ),

            //transactions
            Container(
                margin: const EdgeInsets.only(left: 50, top: 20, bottom: 10),
                child: const Text(
                  "Transactions",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 9, 0, 49),
                    fontWeight: FontWeight.bold,
                     fontFamily: 'Rubik-Regular'
                  ),
                )),
            const Column(
              children: [
                Trans(
                  image: "images/momo.png",
                  number: "059456789",
                  amount: "600",
                  date: " 28-02-24 12:30 AM",
                ),
                Trans(
                  image: "images/momo.png",
                  number: "0532911103",
                  amount: "500",
                  date: " 23-02-24 12:30 AM",
                ),
                Trans(
                  image: "images/momo.png",
                  number: "056567893",
                  amount: "240",
                  date: " 23-02-24 12:30 AM",
                ),
                Trans(
                  image: "images/momo.png",
                  number: "0532911103",
                  amount: "100",
                  date: " 22-01-24 01:00 PM",
                ),
                Trans(
                  image: "images/momo.png",
                  number: "0532911103",
                  amount: "300",
                  date: " 23-02-24 12:30 AM",
                ),
                Trans(
                  image: "images/momo.png",
                  number: "0532911103",
                  amount: "100",
                  date: " 22-01-24 01:00 PM",
                ),
                Trans(
                  image: "images/momo.png",
                  number: "0532911103",
                  amount: "300",
                  date: " 23-02-24 12:30 AM",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PaymentsWay extends StatelessWidget {
  final Color color;
  const PaymentsWay({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
      ),
      width: 340,
      child: Center(
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(15),
          )),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color.withOpacity(0.7),
              // image: const DecorationImage(
              //   fit: BoxFit.cover,
              //   image: AssetImage("images/profile.jpg"),
              // ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Text(
                        "MOMO",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Rubik-medium'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bill",
                            style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'Rubik-medium'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "GHC 12,000.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Rubik-Italic'),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Balance",
                            style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'Rubik-medium'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "GHC 1,000.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Rubik-Italic'),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(
                      //   "0532911103",
                      //   style: TextStyle(
                      //     color: Color.fromARGB(255, 205, 203, 203),
                      //     fontSize: 16,
                      //   ),
                      // ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                      Spacer(),
                      Text(
                        "03/24",
                        style: TextStyle(
                            color: Color.fromARGB(255, 205, 203, 203),
                            fontSize: 16,
                            fontFamily: 'Rubik-Regular'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MeterReading extends StatelessWidget {
  final Color color;
  const MeterReading({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 340,
      height: 225,
      child: Center(
        child: Card(
          color: color.withOpacity(0.7),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(15),
          )),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.refresh,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    const Text(
                      "METER READING",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Rubik-Medium'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "pH",
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontFamily: 'Rubik-medium'),
                        ),
                        Text(
                          "Turbidity",
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontFamily: 'Rubik-medium'),
                        ),
                        Text(
                          "TDS",
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontFamily: 'Rubik-medium'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "4.5",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                             fontFamily: 'Rubik-Italic'
                          ),
                        ),
                        Text(
                          "120NTU",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                             fontFamily: 'Rubik-Italic'
                          ),
                        ),
                        Text(
                          "200ppm",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                             fontFamily: 'Rubik-Italic'
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text(
                    //   "0532911103",
                    //   style: TextStyle(
                    //     color: Color.fromARGB(255, 205, 203, 203),
                    //     fontSize: 16,
                    //   ),
                    // ),
                    Spacer(),
                    Text(
                      "03/24",
                      style: TextStyle(
                        color: Color.fromARGB(255, 205, 203, 203),
                        fontSize: 16,
                         fontFamily: 'Rubik-Regular'
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
