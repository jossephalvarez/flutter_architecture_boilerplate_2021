import 'package:stacked/stacked.dart';
// BUSINESS LOGIC AND VIEW STATE HERE!!
class SecondViewModel extends BaseViewModel{
  String _title= 'Second Home View';
  String get title => '$_title $_counter';

  int _counter = 0;
  int get counter => _counter;

  void updateCounter(){
    _counter++;
    notifyListeners();
  }
}