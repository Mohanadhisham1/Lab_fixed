import 'package:flutter/material.dart';
import './models/functions.dart';
import 'models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://th.bing.com/th/id/R.74b2dde2c4974df41224011f84e1b860?rik=jL1EMM8lGdf5cg&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0010%2f9215%2f7503%2ft%2f5%2fassets%2ftest_result_mobile.jpg%3f3924&ehk=0jx41Cj0iBOEjsKDYkmp9ymOHjMf4JSrKPGo4Ew6fik%3d&risl=&pid=ImgRaw&r=0"))),
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.grey,
                      content: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Quiz();
                                }));
                              },
                              icon: Icon(Icons.quiz),
                              label: Text("start the Quiz")),
                        ],
                      )),
                    );
                  });
            },
            child: Container(
              color: Colors.grey,
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: Text(
                  "Take our color blind test! Press anywhere",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
