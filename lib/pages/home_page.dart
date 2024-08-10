import 'package:flutter/material.dart';
import 'package:smartpower/pages/news_source.dart';
import 'package:smartpower/pages/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List time = [
  "2024-03-2 11PM",
  "2024-02-2 5PM",
  "2024-02-25 1AM",
  "2024-01-22 12:30PM",
];
List image = [
  "images/profile.jpg",
  "images/2.jpg",
  "images/3.jpg",
  "images/4.jpg",
];

List title = [
  "Essel Apusiga Abraham",
  "Analytical study",
  "Power blackouts",
  "Dumsor",
];
 
List subtitle = [
  "CEO & Founder of Smartpower",
  "lorem ipson dola chew chaw 2",
  "lorem ipson dola chew chaw 3",
  "lorem ipson dola chew chaw 4",
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Timeline",
          style: TextStyle(
            color: Color.fromARGB(255, 253, 253, 253),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.newspaper_sharp,
            color: Colors.white,
          ),
          SizedBox(
            width: 120,
          ),
        ],
        backgroundColor: const Color.fromRGBO(10, 0, 82, 1),
        elevation: 5,
      ),
      body: RefreshIndicator(
        onRefresh: () async{},
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.normal),
          itemCount: image.length,
          itemBuilder: (context, index) {
            if (index == 0) {}
            return InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        NewsHome(
                          image: image[index],
                          title: title[index],
                          subtitle: subtitle[index],
                        ),
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
                    }));
              },
              child: News(
                image: image[index],
                time: time[index],
                subtitle: subtitle[index],
                title: title[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
