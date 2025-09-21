import 'package:dio/dio.dart';
import 'package:newsapp/model/artical.dart';

class NewsServices {
  Dio dio = Dio();

  Future<List<Artical>> getNews({required String category}) async {
    List<Artical> articalList = [];
    try {
      Response response = await dio.get(
        "https://gnews.io/api/v4/top-headlines?category=$category&apikey=27adec0d792f6ab4f3874a3466f319ff&lang=ar&country=eg",
      );
      dynamic jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];

      for (var artical in articles) {
        articalList.add(Artical.fromJson(artical));
      }
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
