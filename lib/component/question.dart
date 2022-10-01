import 'package:flutter/material.dart';

import 'package:my_lab_fixed/component/correctorfalse.dart';

class Qus extends StatelessWidget {
  Qus({
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    this.Q_Image,
    this.correct,
    this.more_info,
  });

  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;

  String? Q_Image;

  String? more_info;

  String? correct;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          height: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.I83Ssb5_KZoH50iyFR2YBQHaEo?pid=ImgDet&rs=1"))),
          child: Text(
            "$qus_text",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.amber),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 240,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(Q_Image!))),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(22),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                check_answer(correct, answer_1, more_info),
                SizedBox(width: 50),
                check_answer(correct, answer_2, more_info),
              ],
            ),
            Divider(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                check_answer(correct, answer_3, more_info),
                SizedBox(width: 50),
                check_answer(correct, answer_4, more_info),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
