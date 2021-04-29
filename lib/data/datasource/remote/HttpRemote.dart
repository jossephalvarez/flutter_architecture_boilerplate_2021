import 'package:http/http.dart';
import 'package:provider_architecture_boilerplate/data/datasource/remote/Remote.dart';
import 'package:provider_architecture_boilerplate/data/model/PoiResponseDto.dart';
import 'package:provider_architecture_boilerplate/domain/model/Poi.dart';

class HttpRemote extends Remote {
  Uri _endpoint = Uri.parse("https://t21services.herokuapp.com/points");

  final Client _client;

  HttpRemote(this._client);

  // Mock Response to load json from local without http request
  var pointsMockResponse = {
    "list": [
      {
        "id": "1",
        "title": "MY HOME!",
        "geocoordinates": "41.391926,2.165208"
      },
      {
        "id": "2",
        "title": "Fundació Antoni Tàpies",
        "geocoordinates": "41.39154,2.163835"
      },
      {
        "id": "3",
        "title": "Hospital de Sant Pau",
        "geocoordinates": "41.674202,2.314628"
      },
      {
        "id": "4",
        "title": "La pedrera - Casa Milà",
        "geocoordinates": "41.39558,2.162075"
      },
      {
        "id": "5",
        "title": "Fundació Suñol",
        "geocoordinates": "41.395173,2.16179"
      },
      {
        "id": "6",
        "title": "Museu Egipci -Fundació Clos",
        "geocoordinates": "41.394115,2.164693"
      },
      {
        "id": "7",
        "title": "Museu del Modersnime",
        "geocoordinates": "41.391749,2.163405"
      },
      {
        "id": "8",
        "title": "Museu del Rock",
        "geocoordinates": "41.394325,2.139587"
      },
      {
        "id": "9",
        "title": "Sagrada Família ",
        "geocoordinates": "41.403692,2.174006"
      },
      {
        "id": "10",
        "title": "Fundació ALORDA-DERKSEN",
        "geocoordinates": "41.398703,2.16877"
      },
      {"id": "11", "title": "Catedral", "geocoordinates": "41.406557,2.172375"},
    ]
  };

  // RETURN MOCK RESPONSE WITH DELAY
  Future returnMockPoints() {
    return new Future.delayed(const Duration(seconds: 2), () => pointsMockResponse);
  }

  @override
  Future<List<Poi>> getPois() async {
    //  IMPORTANT > The next 2 lines works with endpoint using client, uncomment to test, and comment the 2 lines that works with local
    // final response = await _client.get(_endpoint);
    // final dto = PoiResponseDto.fromJson(jsonDecode(response.body));

    //  IMPORTANT > The next 2 lines works with local JSON data
    final response = await returnMockPoints();
    final dto = PoiResponseDto.fromJson(response);

    return dto.list.map((e) => e.toPoi()).toList();
  }
}
