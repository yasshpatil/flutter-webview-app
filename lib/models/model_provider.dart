import 'package:flutter/cupertino.dart';

class ModelProvider with ChangeNotifier {
  int _currentIndex = 0;
  late PageController _pageController;

  int getCurrentIndex() => _currentIndex;
  PageController getPageController() => _pageController;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void initializePageController() {
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
