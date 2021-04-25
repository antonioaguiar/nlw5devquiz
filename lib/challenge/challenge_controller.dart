import 'package:flutter/cupertino.dart';

class ChallengeController {
  final currentPageNotifier = ValueNotifier<int>(1);

  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) {
    this.currentPageNotifier.value = value;
  }

  int qtAnswers = 0;
}
