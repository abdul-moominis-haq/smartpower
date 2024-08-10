import 'package:smartpower/auth/register.dart';
import 'package:smartpower/firebase-backend/Firebase_auth_services.dart';

import 'package:flutter/material.dart';
import 'package:smartpower/pages/pagestorage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final AuthService auth = AuthService();
  // final formkey_ = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: const Icon(Icons.arrow_back_ios_outlined),
        //   ),
        //   const SizedBox(
        //     width: 320,
        //   )
        // ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let's Sign you in",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Rubik-medium',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Welcome back , ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Rubik-Regular'
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Monitor your electricy,reacharge more and enjoy power. ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.black,
                    fontFamily: 'Rubik-Regular'
                    
                  ),
                )
              ],
            ),
          ),

          //form for user login
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Form(
              // key: formkey_,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //username
                  TextFormField(
                    controller: emailControler,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter email";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                            style: BorderStyle.none),
                      ),
                      hintText: "demo@gmail.com",
                      label: Text("Email"),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //Password
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter password";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                            style: BorderStyle.none),
                      ),
                      hintText: "Password",
                      label: Text("password"),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 60,
                  ),

                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        );
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const Home(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin = Offset(0.0, 1.0);
                              const end = Offset.zero;
                              const curve = Curves.ease;

                              final tween = Tween(begin: begin, end: end);
                              final curvedAnimation = CurvedAnimation(
                                parent: animation,
                                curve: curve,
                              );

                              return SlideTransition(
                                position: tween.animate(curvedAnimation),
                                child: child,
                              );
                            }));

                        // Navigator.of(context).pop();
                      },

                      // {
                      //   // if(formkey_.currentState!.validate())
                      //   // {

                      //   // }
                      // },
                      style: const ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                        backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 8, 1, 74),
                        ),
                        side: WidgetStatePropertyAll(
                          BorderSide.none,
                        ),
                      ),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 14),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const Register(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  const begin = Offset(0.0, 1.0);
                                  const end = Offset.zero;
                                  const curve = Curves.ease;

                                  final tween = Tween(begin: begin, end: end);
                                  final curvedAnimation = CurvedAnimation(
                                    parent: animation,
                                    curve: curve,
                                  );

                                  return SlideTransition(
                                    position: tween.animate(curvedAnimation),
                                    child: child,
                                  );
                                }));
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 8, 1, 74),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                fontSize: 15,
                                color:  Color.fromARGB(255, 8, 1, 74)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void signIn() {
    auth
        .signUserWithEmailAndPassword(
            emailControler.text, passwordController.text)
        .then(
          (value) => Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const Home(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                const curve = Curves.ease;

                final tween = Tween(begin: begin, end: end);
                final curvedAnimation = CurvedAnimation(
                  parent: animation,
                  curve: curve,
                );

                return SlideTransition(
                  position: tween.animate(curvedAnimation),
                  child: child,
                );
              })),
        );
  }
}



 // // String text = controllerEmail.text;
                        // if (formkey_.currentState!.validate()) {
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(
                        //       showCloseIcon: true,
                        //       content: Text("Welcome Apusiga"),
                              
                        //     ),
                        //   );
                        // }