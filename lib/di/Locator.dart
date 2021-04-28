import 'package:provider_architecture_boilerplate/data/datasource/remote/HttpRemote.dart';
import 'package:provider_architecture_boilerplate/data/datasource/remote/Remote.dart';
import 'package:provider_architecture_boilerplate/data/repository/PoiRepositoryImpl.dart';
import 'package:provider_architecture_boilerplate/domain/repository/PoiRepository.dart';
// import 'package:provider_architecture_boilerplate/view/Navigator.dart';
// import 'package:provider_architecture_boilerplate/view/viewmodel/DetailViewModel.dart';
// import 'package:provider_architecture_boilerplate/view/viewmodel/ListViewModel.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:provider_architecture_boilerplate/ui/views/second/second_viewmodel.dart';
import 'package:provider_architecture_boilerplate/ui/views/startup/startup_viewmodel.dart';

final getIt = GetIt.I;

Future<void> initializeDI() async {
  await _data();
  await _domain();
  await _view();
}

void _data() async {
  // DATA
  getIt.registerSingleton<Remote>(HttpRemote(http.Client()));
  getIt.registerSingleton<PoiRepository>(PoiRepositoryImpl(getIt.get()));
}

void _domain() async {}

void _view() async {
  getIt.registerFactory<StartupViewModel>(() => StartupViewModel());
  getIt.registerFactory<SecondViewModel>(() => SecondViewModel());
}
