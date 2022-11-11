
import '../../model/question_model.dart';


class QuestionsLocalData {
  int index = 0;
  List<QuestionModel> questionAnswers = [
    QuestionModel(questions: 'В Кыргызстане 5 областей?', answers: false),
    QuestionModel(questions: 'Евразия делится на два?', answers: true),
    QuestionModel(questions: 'В мире 5 океанов?', answers: true),
    QuestionModel(questions: 'В Оше есть Арка?', answers: true),
  ];
  String? suroonuAlipKel() {
    if (index < questionAnswers.length) {
      return questionAnswers[index].questions;
    }
    return 'Questionfinish';
  }

  bool? jooptuAlipKel() {
    return questionAnswers[index].answers;
  }

  void suroonuOtkoz() {
    index++;
  }
}

QuestionsLocalData questionsLocalData = QuestionsLocalData();
