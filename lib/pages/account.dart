import 'package:flutter/material.dart';
import 'package:smartpower/firebase-backend/firebase_auth_services.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final AuthService auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(10, 0, 82, 1),
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      titlePadding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 30),
                      title: const Text(
                        "Are you sure you want to logout ?",
                        style: TextStyle(
                          color: Color.fromRGBO(10, 0, 82, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      shadowColor: const Color.fromARGB(255, 93, 93, 93),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      actions: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: const WidgetStatePropertyAll(
                                  Color.fromRGBO(10, 0, 82, 1),
                                ),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                // auth.signOut().then(
                                //       (value) => Navigator.of(context).push(
                                //         PageRouteBuilder(
                                //           pageBuilder:
                                //               (context, animation, secondaryAnimation) =>
                                //                   const OptionLog(),
                                //           transitionsBuilder:
                                //               (context, animation, secondaryAnimation, child) {
                                //             const begin = Offset(0.0, 1.0);
                                //             const end = Offset.zero;
                                //             const curve = Curves.ease;

                                //             final tween = Tween(begin: begin, end: end);
                                //             final curvedAnimation = CurvedAnimation(
                                //               parent: animation,
                                //               curve: curve,
                                //             );

                                //             return SlideTransition(
                                //               position: tween.animate(curvedAnimation),
                                //               child: child,
                                //             );
                                //           },
                                //         ),
                                //       ),
                                //     );
                              },
                              child: const Text(
                                "Yes",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: const WidgetStatePropertyAll(
                                  Color.fromRGBO(10, 0, 82, 1),
                                ),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "No",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  // Text(
                  //   "Sign Out",
                  //   style: TextStyle(
                  //     color: Color.fromARGB(255, 255, 255, 255),
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(10, 0, 82, 1),
                  border: Border(
                      bottom: BorderSide(
                    width: 2,
                    color: Color.fromARGB(255, 11, 2, 79),
                  ))),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        radius: 60,
                        child: CircleAvatar(
                          radius: 58,
                          backgroundImage: AssetImage(
                            "images/prof.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Tina",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 16,
                            color: Color.fromARGB(115, 255, 255, 255),
                          ),
                          Text(
                            "Ghana,Tarkwa,western region",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(115, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   decoration: const BoxDecoration(
            //     color: Color.fromARGB(255, 255, 255, 255),
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
            //     child: Column(
            //       children: [
            //         ListTile(
            //           onTap: () {
            //             Navigator.of(context).push(PageRouteBuilder(
            //                 pageBuilder:
            //                     (context, animation, secondaryAnimation) =>
            //                         const EditProfile(),
            //                 transitionsBuilder: (context, animation,
            //                     secondaryAnimation, child) {
            //                   const begin = Offset(0.0, 1.0);
            //                   const end = Offset.zero;
            //                   const curve = Curves.ease;

            //                   final tween = Tween(begin: begin, end: end);
            //                   final curvedAnimation = CurvedAnimation(
            //                     parent: animation,
            //                     curve: curve,
            //                   );

            //                   return SlideTransition(
            //                     position: tween.animate(curvedAnimation),
            //                     child: child,
            //                   );
            //                 }));
            //           },
            //           leading: const CircleAvatar(
            //             child: Icon(
            //               Icons.person,
            //               color: Color.fromARGB(255, 33, 1, 107),
            //             ),
            //           ),
            //           title: const Text(
            //             "Edit Profile",
            //             style: TextStyle(
            //               fontSize: 18,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           trailing: IconButton(
            //             onPressed: () {
            //               Navigator.of(context).push(PageRouteBuilder(
            //                   pageBuilder:
            //                       (context, animation, secondaryAnimation) =>
            //                           const EditProfile(),
            //                   transitionsBuilder: (context, animation,
            //                       secondaryAnimation, child) {
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
            //             },
            //             icon: const Icon(
            //               Icons.arrow_forward_ios_outlined,
            //               color: Color.fromARGB(255, 33, 1, 107),
            //             ),
            //           ),
            //         ),
            //         ListTile(
            //           onTap: () {
            //             Navigator.of(context).push(PageRouteBuilder(
            //                 pageBuilder:
            //                     (context, animation, secondaryAnimation) =>
            //                         const Notifications(),
            //                 transitionsBuilder: (context, animation,
            //                     secondaryAnimation, child) {
            //                   const begin = Offset(0.0, 1.0);
            //                   const end = Offset.zero;
            //                   const curve = Curves.ease;

            //                   final tween = Tween(begin: begin, end: end);
            //                   final curvedAnimation = CurvedAnimation(
            //                     parent: animation,
            //                     curve: curve,
            //                   );

            //                   return SlideTransition(
            //                     position: tween.animate(curvedAnimation),
            //                     child: child,
            //                   );
            //                 }));
            //           },
            //           leading: const CircleAvatar(
            //             child: Icon(
            //               Icons.notifications,
            //               color: Color.fromARGB(255, 33, 1, 107),
            //             ),
            //           ),
            //           title: const Text(
            //             "Notifications",
            //             style: TextStyle(
            //               fontSize: 18,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           trailing: IconButton(
            //             onPressed: () {
            //               Navigator.of(context).push(PageRouteBuilder(
            //                   pageBuilder:
            //                       (context, animation, secondaryAnimation) =>
            //                           const Notifications(),
            //                   transitionsBuilder: (context, animation,
            //                       secondaryAnimation, child) {
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
            //             },
            //             icon: const Icon(
            //               Icons.arrow_forward_ios_outlined,
            //               color: Color.fromARGB(255, 33, 1, 107),
            //             ),
            //           ),
            //         ),
            //         ListTile(
            //           onTap: () {
            //             Navigator.of(context).push(PageRouteBuilder(
            //                 pageBuilder:
            //                     (context, animation, secondaryAnimation) =>
            //                         const PrivacyPolicy(),
            //                 transitionsBuilder: (context, animation,
            //                     secondaryAnimation, child) {
            //                   const begin = Offset(0.0, 1.0);
            //                   const end = Offset.zero;
            //                   const curve = Curves.ease;

            //                   final tween = Tween(begin: begin, end: end);
            //                   final curvedAnimation = CurvedAnimation(
            //                     parent: animation,
            //                     curve: curve,
            //                   );

            //                   return SlideTransition(
            //                     position: tween.animate(curvedAnimation),
            //                     child: child,
            //                   );
            //                 }));
            //           },
            //           leading: const CircleAvatar(
            //             child: Icon(
            //               Icons.lock,
            //               color: Color.fromARGB(255, 33, 1, 107),
            //             ),
            //           ),
            //           title: const Text(
            //             "Privacy and Policy",
            //             style: TextStyle(
            //               fontSize: 18,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           trailing: IconButton(
            //             onPressed: () {
            //               Navigator.of(context).push(PageRouteBuilder(
            //                   pageBuilder:
            //                       (context, animation, secondaryAnimation) =>
            //                           const PrivacyPolicy(),
            //                   transitionsBuilder: (context, animation,
            //                       secondaryAnimation, child) {
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
            //             },
            //             icon: const Icon(
            //               Icons.arrow_forward_ios_outlined,
            //               color: Color.fromARGB(255, 33, 1, 107),
            //             ),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}
