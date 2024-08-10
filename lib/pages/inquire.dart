import 'package:flutter/material.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({super.key});

  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 72,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Form(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: Border.all(
                      color:  const Color.fromARGB(255, 16, 1, 67),
                      width: 2,
                    )),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    hintText: "Let's here from you, start typing...",
                    border: InputBorder.none,
                  ),
                  maxLines: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 200,
              ),
              child: SizedBox(
                height: 35,
                width: 70,
                child: FloatingActionButton(
                  elevation: 5,
                  backgroundColor: const Color.fromARGB(255, 16, 1, 67),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  child: const Center(
                    child: Icon(
                      Icons.send_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
