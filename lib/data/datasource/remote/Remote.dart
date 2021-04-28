import 'package:provider_architecture_boilerplate/domain/model/Poi.dart';

abstract class Remote {
  Future<List<Poi>> getPois();
}