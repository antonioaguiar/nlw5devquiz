import 'package:dev_quiz/home/home_repository.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'home_state.dart';

class HomeController {
  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(
      Duration(seconds: 2),
    );
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(
      Duration(seconds: 2),
    );
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
