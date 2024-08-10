import 'package:flutter/material.dart';
import 'package:smartpower/pages/home_page.dart';

String message = """
I'm excited to introduce myself as a young and ambitious tech enthusiast, eager to learn and grow with your organization. With a strong foundation in software development, as an intermediate developer, I've honed my skills in delivering high-quality work, and I'm confident in my ability to make a positive impact. Looking for a dynamic environment where I can be mentored, trained, and coached to reach my full potential, I find myself in your organization as it can let me achieve all these, and will be happy to give my best to impact your organization. I'm a quick learner, a team player, and dedicated to delivering exceptional results. Thank you for considering my application. I look forward to hearing from you.
""";
HomePage homePage = const HomePage();

class NewsHome extends StatelessWidget {
  // final String time;
  final String image;
  final String title;
  final String subtitle;
  // final String message;
  const NewsHome({
    super.key,
    // required this.time,
    required this.image,
    required this.title,
    required this.subtitle,
    // required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_outlined),
          ),
          const Spacer()
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ListTile(
                  //   leading: const CircleAvatar(
                  //     backgroundColor: Color.fromARGB(255, 3, 55, 98),
                  //     radius: 30,
                  //     child: CircleAvatar(
                  //       radius: 25,
                  //       backgroundImage: AssetImage("images/profile.jpg"),
                  //     ),
                  //   ),
                  //   title: Text(
                  //     "Smart Power",
                  //     style: _textStyle,
                  //   ),
                  //   subtitle: Row(
                  //     children: [
                  //       const Icon(
                  //         Icons.date_range_sharp,
                  //         size: 15,
                  //       ),
                  //       Text(
                  //         "2024-03-05 11pm",
                  //         style: _textStyle1,
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                    child: Column(
                      children: [
                        Card(
                          elevation: 10,
                          child: Container(
                            width: double.infinity,
                            height: 400,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(3),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  image,
                                ),
                              ),
                            ),
                            child: Container(
                              color: Colors.black.withOpacity(0.3),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 0, 0, 0)
                                        .withOpacity(0.5),
                                    border: const Border(
                                      bottom: BorderSide(color: Colors.amber),
                                      top: BorderSide(color: Colors.amber),
                                      left: BorderSide(color: Colors.amber),
                                      right: BorderSide(color: Colors.amber),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 100,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        title,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Rubik-medium',
                                        ),
                                      ),
                                      Text(
                                        subtitle,
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 209, 199, 199),
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                message,
                                style: const TextStyle(
                                    wordSpacing: 0,
                                    fontSize: 16,
                                    height: 1.5,
                                    color: Colors.black,
                                    fontFamily: 'Rubik-Regular'),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  actions: [
                    Column(
                      children: [
                        Form(
                          child: TextFormField(
                            maxLines: 5,
                            decoration: const InputDecoration(
                              hintText: "Drop your comment",
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.cancel_outlined,
                                size: 40,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.send_rounded,
                                size: 40,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                );
              },
            );
          },
          elevation: 10,
          shape: const CircleBorder(),
          backgroundColor: const Color.fromARGB(255, 239, 236, 236),
          child: const Icon(
            Icons.message,
            color: Color.fromARGB(255, 14, 1, 69),
          ),
        ),
      ),
    );
  }
}
