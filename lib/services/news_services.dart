import 'package:dio/dio.dart';
import 'package:newsapp/model/artical.dart';

class NewsServices {
  Dio dio = Dio();

  Future<List<Artical>> getNews({required String category}) async {
    List<Artical> articalList = [];
    try {
      Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=8d54bbc51f6a42d4ac4760a836d9b345&category=$category",
      );
      dynamic jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];

      for (var artical in articles) {
        articalList.add(
          Artical(
            image: artical["urlToImage"] ?? '',
            titel: artical["title"] ?? '',
            subtitel: artical["description"] ?? '',
          ),
        );
      }
    } on Exception catch (e) {
      print(e);
    }
    return articalList;
  }
}
