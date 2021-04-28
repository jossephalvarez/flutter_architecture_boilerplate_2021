import 'package:provider_architecture_boilerplate/domain/model/Poi.dart';

abstract class PoiRepository {
  Future<List<Poi>> getPois(bool forceLocal);
}
