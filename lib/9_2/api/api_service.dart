import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiService {

  Future<String?> apiCalling(String category) async {
    String api =
        'https://pixabay.com/api/?key=44454122-e44538aa10a6ef4d7e110654a&q=$category&image_type=photo&per_page=50';
    Response response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      return response.body;
    }

    return null;
  }
}
