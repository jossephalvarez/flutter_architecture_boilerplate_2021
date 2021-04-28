//import 'package:provider_architecture_boilerplate/data/datasource/local/Local.dart';
import 'package:provider_architecture_boilerplate/data/datasource/remote/Remote.dart';
import 'package:provider_architecture_boilerplate/domain/model/Poi.dart';
import 'package:provider_architecture_boilerplate/domain/repository/PoiRepository.dart';

class PoiRepositoryImpl extends PoiRepository {
  final Remote _remote;

  PoiRepositoryImpl(this._remote);

  @override
  Future<List<Poi>> getPois(bool forceLocal) async {
      final pois = await _remote.getPois();
      return pois;
    }
}


