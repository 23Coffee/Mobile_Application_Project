import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    
    Question(
              q: 'Flutter is developed by Facebook.',
              a: false,
            ),
            Question(
              q: 'Dart is the primary language used for Flutter app development.',
              a: true,
            ),
            Question(
              q: 'ListView is used to create a scrollable list in Flutter.',
              a: true,
            ),
            Question(
              q: 'In Flutter, you can navigate to a new screen using Navigator.',
              a: true,
            ),
            Question(
              q: 'The main function in a Flutter app is void main() {}.',
              a: true,
            ),
            Question(
              q: 'The pubspec.yaml file in Flutter is used for managing dependencies.',
              a: true,
            ),
            Question(
              q: 'MaterialApp is the top-level widget for a Flutter application.',
              a: true,
            ),
            Question(
              q: 'Flutter is not an open-source framework.',
              a: false,
            ),
            Question(
              q: 'StatefulWidget is used for components that don\'t change over time.',
              a: false,
            ),
            Question(
              q: 'The setState() method is used to trigger a rebuild of the UI in Flutter.',
              a: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}


