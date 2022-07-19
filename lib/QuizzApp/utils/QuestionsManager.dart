
import 'dart:math';

import '../constants/QuestionsList.dart';
import 'Pair.dart';

class QuestionsManager {

  int _totalQuestions = 0;
  int _currentQuestion = 0;
  int _totalElapsedQuestions = 0;
  int maxQuestions;
  final List<int> _elapsedQuestions = [];
  final List<bool> _corrects = [];
  final List<Pair<String, bool>> _questions = QuestionsList.QUESTIONS;

  QuestionsManager([
    this.maxQuestions = 10,
  ]) {
    _totalQuestions = _questions.length;
  }

  bool setAnswer(bool answer) {
    bool isCorrect = _questions[_currentQuestion].second == answer;
    _corrects.add(isCorrect);
    return isCorrect;
  }

  List<bool> getListCorrects() => _corrects;

  bool _isDuplicate(int num) {
    for (var element in _elapsedQuestions) {
       if(num == element) return true;
    }
    return false;
  }

  String? nextQuestions() {
    _totalElapsedQuestions++;
    if(isOver()) return null;
    int mQuestion = Random().nextInt(_totalQuestions);
    while(_isDuplicate(mQuestion)) {
      mQuestion = Random().nextInt(_totalQuestions);
    }

    _elapsedQuestions.add(mQuestion);
    _currentQuestion = mQuestion;
    print(_currentQuestion);
    return _questions[_currentQuestion].first;
  }

  bool isOver() => _totalElapsedQuestions >= maxQuestions+1;

  void reset() {
    _currentQuestion = 0;
    _totalElapsedQuestions = 0;
    _corrects.clear();
    _currentQuestion = 0;
    _elapsedQuestions.clear();
  }

  Pair<int, int> getResults() {
    int results = 0;
    for (var element in _corrects) {
      if(element) results++;
    }

    return Pair(results, maxQuestions);
  }

  void setTotalQuestions(int total) => _totalQuestions = total;

  int getCurrentQuestion() => _currentQuestion;

}