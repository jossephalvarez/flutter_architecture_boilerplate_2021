import 'dart:convert';
import 'package:http/http.dart';
import 'package:provider_architecture_boilerplate/data/datasource/remote/Remote.dart';
import 'package:provider_architecture_boilerplate/data/model/PoiResponseDto.dart';
import 'package:provider_architecture_boilerplate/domain/model/Poi.dart';

class HttpRemote extends Remote {
  Uri _endpoint = Uri.parse("https://t21services.herokuapp.com/points");

  final Client _client;

  HttpRemote(this._client);

  @override
  Future<List<Poi>> getPois() async {
    final response = await _client.get(_endpoint);
    final dto = PoiResponseDto.fromJson(jsonDecode(response.body));
    return dto.list.map((e) => e.toPoi()).toList();
  }
}
