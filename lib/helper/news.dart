import 'dart:convert';

import 'package:myapp/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    var url = Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2022-05-22&sortBy=publishedAt&apiKey=255bc79d3fea4922be0314eb6fca504d');

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(title: element['title'], author: element["author"], description: element["description"], url: element["url"], urlToImage: element["urlToImage"], content: element["content"]);
          news.add(articleModel);
        }
      });
    }
  }
}
