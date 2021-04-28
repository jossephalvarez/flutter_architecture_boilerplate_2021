import 'package:provider_architecture_boilerplate/domain/model/Poi.dart';
import 'package:provider_architecture_boilerplate/domain/repository/PoiRepository.dart';
import 'package:stacked/stacked.dart';
// BUSINESS LOGIC AND VIEW STATE HERE!!
class SecondViewModel extends BaseViewModel{
  List<Poi> _pois = [];

  List<Poi> get pois => _pois;

  final PoiRepository _repository;

  SecondViewModel(this._repository);

  void _getPois(bool forceLocal) async {
    final pois = await _repository.getPois(forceLocal);
    this._pois.clear();
    this._pois.addAll(pois);
    notifyListeners();
  }

  void _clearPois(){
    print('length ${this._pois.length}');
    this._pois.clear();
    print('length after cleaning ${this._pois.length}');
    notifyListeners();
  }

  void onGetPressed() {
    print('...gettting');
    _getPois(false);
  }

  void onClearPressed() {
    print('...cleaning');
    _clearPois();
  }
}