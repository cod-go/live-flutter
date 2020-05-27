import 'package:http/http.dart' as http;

const baseUrl = 'https://detonado-pokemon.free.beeceptor.com';

class ApiService {

  static Future getDetonado() async {
    var url = baseUrl + '/detonado';
    return http.get(url);
  }

  static Future getSpinOff() async {
    var url = baseUrl + '/spinoff';
    return http.get(url);
  }

}