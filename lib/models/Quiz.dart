import 'package:flutter/material.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.question_answer),
                text: "Q1",
              ),
              Tab(
                icon: Icon(Icons.question_answer),
                text: "Q2",
              ),
              Tab(
                icon: Icon(Icons.question_answer),
                text: "Q3",
              ),
              Tab(
                icon: Icon(Icons.question_answer),
                text: "Q4",
              ),
              Tab(
                icon: Icon(Icons.question_answer),
                text: "Q5",
              ),
              Tab(
                icon: Icon(Icons.question_answer),
                text: "Q6",
              ),
            ]),
            title: Text("Quiz App"),
            backgroundColor: Colors.grey,
          ),
          body: TabBarView(children: [
            Qus(
              correct: "7",
              Q_Image: "images/1.jpg",
              answer_1: "5",
              answer_2: "8",
              answer_3: "7",
              answer_4: "10",
              qus_text: "what number do you see?",
              more_info: "go to next question",
            ),
            Qus(
              correct: "6",
              Q_Image: "images/2.png",
              answer_1: "6",
              answer_2: "4",
              answer_3: "3",
              answer_4: "12",
              qus_text: "what number do you see?",
              more_info: "go to next question",
            ),
            Qus(
              correct: "9",
              Q_Image: "images/3.jpg",
              answer_1: "5",
              answer_2: "9",
              answer_3: "32",
              answer_4: "21",
              qus_text: "what number do you see?",
              more_info: "go to next question",
            ),
            Qus(
              correct: "8",
              Q_Image: "images/4.png",
              answer_1: "7",
              answer_2: "18",
              answer_3: "8",
              answer_4: "2",
              qus_text: "what number do you see?",
              more_info: " go to next question",
            ),
            Qus(
              correct: "2",
              Q_Image: "images/5.jpg",
              answer_1: "2",
              answer_2: "8",
              answer_3: "14",
              answer_4: "9",
              qus_text: "what number do you see?",
              more_info: "go to next question",
            ),
            Qus(
              correct: "74",
              Q_Image: "images/6.png",
              answer_1: "74",
              answer_2: "23",
              answer_3: "55",
              answer_4: "11",
              qus_text: "what number do you see?",
              more_info: "go to next question",
            ),
          ]),
        ));
  }
}
