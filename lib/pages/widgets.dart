import 'package:flutter/material.dart';
import 'package:smartpower/pages/news_source.dart';

class Trans extends StatelessWidget {
  final String image;
  final String number;
  final String date;
  final String amount;
  const Trans({
    super.key,
    required this.image,
    required this.number,
    required this.amount,
    required this.date
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Card(
          color: const Color.fromARGB(255, 231, 224, 224),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundColor: const Color.fromARGB(255, 0, 8, 94),
              child: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(image),
              ),
            ),
            title: Text(
              "Sent via $number",
              style: const TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 9, 0, 55),
                fontFamily: 'Rubik-medium',
              ),
            ),
            subtitle: Text(
              date,
              style: const TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontFamily: 'Rubik-Regular'),
            ),
            trailing: Container(
              width: 60,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                color: const Color.fromARGB(255, 8, 1, 74).withOpacity(0.4),
              ),
              child: Center(
                child: Text(
                  "Ghc $amount",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

class News extends StatelessWidget {
  final String time;
  final String image;
  final String title;
  final String subtitle;

  const News(
      {super.key,
      required this.time,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        child: Card(
          elevation: 10,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
              color: Color.fromARGB(255, 239, 234, 234),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 3, 55, 98),
                    radius: 15,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      backgroundImage: AssetImage("images/icon.png"),
                    ),
                  ),
                  title: const Text(
                    "Smart Power",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Rubik-medium',
                      color: Color.fromARGB(255, 10, 1, 59),
                    ),
                  ),
                  subtitle: Text(
                    time,
                    style: const TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Rubik-Italic',
                      color: Color.fromARGB(255, 10, 1, 59),
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 5,
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(0),
                      ),
                    ),
                    height: 70,
                    child: Container(
                      color: Colors.black.withOpacity(0.5),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: ListTile(
                          title: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            subtitle,
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: SizedBox(
                    width: 100,
                    height: 30,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(10, 0, 82, 1),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      NewsHome(
                                        image: image,
                                        title: title,
                                        subtitle: subtitle,
                                      ),
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
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Read... ",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 10,
                                fontFamily: 'Rubik-medium',
                              ),
                            ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 11,
                            //   color: Color.fromARGB(255, 255, 255, 255),
                            // ),
                            // Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 11,
                            //   color: Color.fromARGB(255, 255, 255, 255),
                            // )
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// TextStyle _textStyle = const TextStyle(
//   fontSize: 13,
//   fontWeight: FontWeight.bold,
//   fontFamily: 'Rubik-medium',
//   color: Color.fromARGB(255, 10, 1, 59),
// );

// TextStyle _textStyle1 = const TextStyle(
//   fontSize: 12,
//   fontWeight: FontWeight.normal,
//   fontFamily: 'Rubik-Italic',
//   color: Color.fromARGB(255, 10, 1, 59),
// );
