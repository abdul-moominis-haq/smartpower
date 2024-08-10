import 'package:smartpower/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:smartpower/firebase-backend/firebase_auth_services.dart';
import 'package:smartpower/pages/pagestorage.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

TextEditingController controllerFulname_ = TextEditingController();

TextEditingController controllerEmail_ = TextEditingController();

TextEditingController controllerPhone_ = TextEditingController();

TextEditingController controllerUsername_ = TextEditingController();

TextEditingController controllerMeter_ = TextEditingController();

TextEditingController controllerPassword_ = TextEditingController();

final AuthService auth = AuthService();

// final  key_ =  GlobalKey<FormState> ();

class _RegisterState extends State<Register> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
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
                  "Let's Register Account ",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Rubik-medium',
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Hello user , you have a grateful journey",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 30,
                    fontFamily: 'Rubik-Italic',
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),

          //form for user login
          Form(
            // key: key_,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Full name
                  TextFormField(
                    controller: controllerFulname_,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                            style: BorderStyle.none),
                      ),
                      hintText: "FullName",
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //email
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: controllerEmail_,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                            style: BorderStyle.none),
                      ),
                      hintText: "abrahamessel156@gmail.com",
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //phone
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: controllerPhone_,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                            style: BorderStyle.none),
                      ),
                      hintText: "Phone",
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //username
                  TextFormField(
                    controller: controllerUsername_,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                            style: BorderStyle.none),
                      ),
                      hintText: "Create username e.g essel_",
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //Meter number
                  TextFormField(
                    controller: controllerMeter_,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                            style: BorderStyle.none),
                      ),
                      hintText: "Meter No.",
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
                    controller: controllerPassword_,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey,
                            style: BorderStyle.none),
                      ),
                      hintText: "Password",
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                    ),
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: signup,
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
                          side: WidgetStatePropertyAll(BorderSide.none)),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 20),
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
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const Login(),
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
                                },
                              ),
                            );
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
                              "Sign in",
                              style: TextStyle(fontSize: 15),
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

  void signup() {
    auth
        .createUserWithEmailAndPassword(
            controllerEmail_.text, controllerPassword_.text)
        .then((value) => Navigator.of(context).push(
              PageRouteBuilder(
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
                },
              ),
            ));

    controllerEmail_.clear();
    controllerPassword_.clear();
  }
}
