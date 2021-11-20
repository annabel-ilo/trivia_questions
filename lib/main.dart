import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Qapp());
}

class Qapp extends StatefulWidget {
  const Qapp({Key? key}) : super(key: key);

  @override
  _QappState createState() => _QappState();
}

class _QappState extends State<Qapp> {
  List questions = [
    {
      "question": "What is the rarest M&M color?",
      "option_a": "Purple",
      "option_b": "Brown",
      "option_c": "Orange",
      "option_d": "Pink",
      "answer": "Brown"
    },
    {
      "question":
          "In a website browser address bar, what does “www” stand for?",
      "option_a": "World Wide Web",
      "option_b": "Word Wide Web",
      "option_c": "World Wild Web",
      "option_d": "Word Wide Wib",
      "answer": "World Wide Web"
    },
    {
      "question":
          "According to Greek mythology, who was the first woman on earth?",
      "option_a": "Bridget",
      "option_b": "Gertrude",
      "option_c": "Maryam",
      "option_d": "Pandora",
      "answer": "Pandora"
    },
    {
      "question": "Which African country was formerly known as Abyssinia?",
      "option_a": "Ethiopia",
      "option_b": "Tanzania",
      "option_c": "Liberia",
      "option_d": "Nigeria",
      "answer": "Ethiopia"
    },
    {
      "question": "Stefani Joanne Angelina Germanotta?",
      "option_a": "Lizzo",
      "option_b": "Pink",
      "option_c": "Sia",
      "option_d": "Lady Gaga",
      "answer": "Lady Gaga"
    },
    {
      "question": "Which country consumes the most chocolate per capita?",
      "option_a": "Switzerland",
      "option_b": "Australia",
      "option_c": "Canada",
      "option_d": "Paris",
      "answer": "Switzerland"
    },
    {
      "question": " What is the softest mineral in the world?",
      "option_a": "Cotton",
      "option_b": "Wool",
      "option_c": "Talc",
      "option_d": "Silk",
      "answer": "Talc"
    },
    {
      "question": "How many ribs are in a human body?",
      "option_a": "30",
      "option_b": "22",
      "option_c": "24",
      "option_d": "17",
      "answer": "24"
    },
    {
      "question": "Which country is known as the Land of White Elephant?",
      "option_a": "Indonesia",
      "option_b": "Japan",
      "option_c": "India",
      "option_d": "Thailand",
      "answer": "Thailand"
    },
    {
      "question": "What is the smallest ocean in the world?",
      "option_a": "Indian Ocean",
      "option_b": "atlantic",
      "option_c": "Arctic",
      "option_d": "oceanic",
      "answer": "Arctic"
    },
    {
      "question": "How many eyes does a bee have?",
      "option_a": "8",
      "option_b": "5",
      "option_c": "2",
      "option_d": "6",
      "answer": "5"
    },
  ];
  var rightAnswerCount = 0;
  var wrongAnswerCount = 0;
  var currentIndex = 0;

  validateAnswer(userInput) {
    if (currentIndex < questions.length - 1) {
      if (userInput == questions[currentIndex]["answer"]) {
        setState(() {
          rightAnswerCount += 1;
          currentIndex += 1;
        });
      } else {
        setState(() {
          wrongAnswerCount += 1;
          currentIndex += 1;
        });
      }
    }
  }

  reset() {
    setState(() {
      rightAnswerCount = 0;
      wrongAnswerCount = 0;
      currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Center(child: Text('Dare to answer?')),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${questions[currentIndex]['question']}",
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black45,
                    elevation: 0,
                  ),
                  onPressed: () {
                    validateAnswer(questions[currentIndex]['option_a']);
                  },
                  child: Text("${questions[currentIndex]['option_a']}"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black45,
                    elevation: 0,
                  ),
                  onPressed: () {
                    validateAnswer(questions[currentIndex]['option_b']);
                  },
                  child: Text("${questions[currentIndex]['option_b']}"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black45,
                    elevation: 0,
                  ),
                  onPressed: () {
                    validateAnswer(questions[currentIndex]['option_c']);
                  },
                  child: Text("${questions[currentIndex]['option_c']}"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black45,
                    elevation: 0,
                  ),
                  onPressed: () {
                    validateAnswer(questions[currentIndex]['option_d']);
                  },
                  child: Text("${questions[currentIndex]['option_d']}"),
                ),
              ),
              SizedBox(height: 20),
              Text(
                  "Total: ${questions.length} :-:   Right: ${rightAnswerCount} Wrong: ${wrongAnswerCount}"),
              SizedBox(height: 10),
              TextButton(
                  onPressed: () {
                    reset();
                  },
                  child: Text("Reset")),
            ],
          ),
        ),
      ),
    );
  }
}
