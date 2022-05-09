import 'question.dart';

class QuizzBrain {
  final List<Question> _questions = [
    Question(text: 'Are you smart?', answer: true),
    Question(text: 'Are you pretty?', answer: true),
    Question(text: 'Are you ugly?', answer: false),
  ];

  int questionNumber = 0;

  void nextQuestion() {
    if (questionNumber < _questions.length - 1) {
      questionNumber++;
    }
  }

  String getQuestion() {
    return _questions[questionNumber].text;
  }

  bool getAnswer() {
    return _questions[questionNumber].answer;
  }
}
