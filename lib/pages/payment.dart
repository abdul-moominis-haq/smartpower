import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  double radius = 15;
  Color color = Colors.grey;
  Color textcolor = Colors.black;

  // ignore: non_constant_identifier_names
  Widget value_widget = const Text("hii");

  @override
  Widget build(BuildContext context) {
    TextEditingController controlerPhone_ = TextEditingController();
    controlerPhone_.text = "0532911103";

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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Recharge More,",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 30, 1, 65),
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "and enjoy seamless Water usage ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 30, 1, 65),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: controlerPhone_,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        label: Text("Phone")),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      hintText: "Enter Amount",
                      label: Text("Amount"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // showDatePicker(
                          //   context: context,
                          //   firstDate: DateTime(DateTime.may),
                          //   lastDate: DateTime.now(),
                          // );

                          // showAboutDialog(
                          //   context: context,
                          //   children: List.generate(3, (index) => Text("data"),)
                          // );

                          showDialog(
                            context: context,
                            builder: (context) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          );

                          // Navigator.of(context).pop();
                        },
                        style: const ButtonStyle(
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                            ),
                            backgroundColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 42, 2, 107))),
                        child: const Text(
                          "Proceed to pay",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    InkWell(
                      onTap: () {},
                      hoverColor: Colors.transparent,
                      onLongPress: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock,
                            size: 14,
                            color: Colors.black26,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "end-to-end encryption",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
