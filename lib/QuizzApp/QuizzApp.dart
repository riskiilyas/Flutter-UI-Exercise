import 'package:flutter/material.dart';
import 'package:flutter_ui_exercise/QuizzApp/utils/Pair.dart';
import 'package:flutter_ui_exercise/QuizzApp/utils/QuestionsManager.dart';


class QuizzApp extends StatelessWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: QuizzPage(),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {

  List<Icon> corrects = [];
  QuestionsManager manager = QuestionsManager();
  late String mQuestion;
  late Pair<int, int> results;
  bool isOver = false;
  String trueString = 'True';

  void addToIcons(bool answer) {
    if(answer) {
      corrects.add(const Icon(
        Icons.check,
        color: Colors.green,
      ));
    } else {
      corrects.add(const Icon(
        Icons.clear,
        color: Colors.red,
      ));
    }
  }

  void setQuestion() {
    results = manager.getResults();
    mQuestion = manager.nextQuestions() ?? 'You Got ${results.first} Out of ${results.second}!';
    isOver = manager.isOver();
    trueString = 'True';
    if(isOver) trueString = 'Try Again';
  }

  @override
  void initState() {
    super.initState();
    setQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          color: Colors.grey[800],
          child: Column(
            children: [
              Expanded(
                flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        mQuestion,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32
                        ),
                      ),
                    ),
                  )
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  if(isOver) {
                                    manager.reset();
                                    corrects.clear();
                                  } else {
                                    addToIcons(manager.setAnswer(true));
                                  }
                                  setQuestion();
                                });
                              },
                            child: Card(
                              elevation: 10,
                              child: Container(
                                color: Colors.green,
                                child: Center(
                                  child: Text(
                                    trueString,
                                    style: const TextStyle(
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                      ),
                      Expanded(
                          child: Visibility(
                            visible: !isOver,
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  addToIcons(manager.setAnswer(false));
                                  setQuestion();
                                });
                              },
                              child: Card(
                                elevation: 10,
                                child: Container(
                                  color: Colors.red,
                                  child: const Center(
                                    child: Text(
                                      'False',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: corrects,
                      )
                    ],
                  ),
              )
            ],
          ),
        ),
    );
  }
}

