import 'package:smartpower/auth/login.dart';
import 'package:smartpower/auth/register.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OptionLog extends StatefulWidget {
  const OptionLog({super.key});

  @override
  State<OptionLog> createState() => _OptionLogState();
}

class _OptionLogState extends State<OptionLog> {
  final PageController _controller = PageController();
  var check = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 450,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      PageView(
                        controller: _controller,
                        children: [
                          SizedBox(
                            height: double.infinity,
                            child: Column(
                              children: [
                                Image.asset("images/sign1.png"),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Get ready !!",
                                  style: TextStyle(
                                      fontSize: 35,
                                      color: Color.fromARGB(255, 10, 1, 59),
                                      fontWeight: FontWeight.bold),
                                ),
                                // const Text(
                                //   "Machine learning techniques have emerged",
                                //   style: TextStyle(
                                //       color: Colors.black,
                                //       fontWeight: FontWeight.bold),
                                // )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: double.infinity,
                            child: Image.asset("images/sign2.png"),
                          ),
                          SizedBox(
                            height: double.infinity,
                            child: Image.asset("images/sign3.png"),
                          ),
                          SizedBox(
                            height: double.infinity,
                            child: Image.asset("images/sign4.png"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: SizedBox(
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      check--;
                                    });
                        
                                    _controller.previousPage(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                  child: check >= 2
                                      ? const Icon(Icons.arrow_back_ios)
                                      : const Text(""),
                                ),
                                SmoothPageIndicator(
                                  controller: _controller,
                                  count: 4,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (check == 4) {
                                        } else {
                                          check++;
                                        }
                                      });
                        
                                      _controller.nextPage(
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.ease);
                                    },
                                    child: check < 4
                                        ? const Icon(Icons.arrow_forward_ios)
                                        : const Text("")),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),

                  //sigin and register
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //sigin link button
                        SizedBox(
                          height: 50,
                          width: 140,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        const Login(),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      const begin = Offset(0.0, 1.0);
                                      const end = Offset.zero;
                                      const curve = Curves.ease;

                                      final tween =
                                          Tween(begin: begin, end: end);
                                      final curvedAnimation = CurvedAnimation(
                                        parent: animation,
                                        curve: curve,
                                      );

                                      return SlideTransition(
                                        position:
                                            tween.animate(curvedAnimation),
                                        child: child,
                                      );
                                    }));
                              },
                              style: const ButtonStyle(
                                  shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  backgroundColor: WidgetStatePropertyAll(
                                    Colors.black,
                                  ),
                                  side:
                                      WidgetStatePropertyAll(BorderSide.none)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white),
                                  ),
                                ),
                              )),
                        ),
                        //Register link button
                        SizedBox(
                          height: 50,
                          width: 155,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        const Register(),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      const begin = Offset(0.0, 1.0);
                                      const end = Offset.zero;
                                      const curve = Curves.ease;

                                      final tween =
                                          Tween(begin: begin, end: end);
                                      final curvedAnimation = CurvedAnimation(
                                        parent: animation,
                                        curve: curve,
                                      );

                                      return SlideTransition(
                                        position:
                                            tween.animate(curvedAnimation),
                                        child: child,
                                      );
                                    }));
                              },
                              style: const ButtonStyle(
                                  shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  backgroundColor: WidgetStatePropertyAll(
                                    Color.fromARGB(255, 35, 2, 248),
                                  ),
                                  side:
                                      WidgetStatePropertyAll(BorderSide.none)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
