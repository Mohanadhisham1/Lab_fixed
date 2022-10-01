import 'package:flutter/material.dart';

class check_answer extends StatelessWidget {
  check_answer(this.correct, this.answer_text, this.information);
  String? correct;
  String? answer_text;
  String? information;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (correct == answer_text) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.grey,
                  actions: [
                    Center(
                      child: Card(
                        color: Color.fromARGB(255, 237, 164, 189),
                        child: Column(children: [
                          Card(
                            elevation: 30,
                            shadowColor: Colors.yellow,
                            color: Color.fromARGB(255, 4, 36, 62),
                            child: Text(
                              "Correct, your answer is $correct",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Divider(
                            height: 30,
                            color: Color.fromARGB(255, 1, 34, 61),
                          ),
                          Card(
                            shadowColor: Colors.yellow,
                            elevation: 30,
                            color: Colors.purple,
                            child: Text(
                              "$information",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                );
              });
        } else {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    Card(
                        color: Color.fromARGB(255, 253, 37, 52),
                        shadowColor: Color.fromARGB(255, 253, 24, 8),
                        elevation: 20,
                        child: Text(
                          " you're unfortunately wrong :(",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ))
                  ],
                );
              });
        }
      },
      child: Card(
        elevation: 30,
        shadowColor: Colors.black,
        margin: EdgeInsets.all(20),
        color: Colors.orange,
        child: Text(
          "$answer_text",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
