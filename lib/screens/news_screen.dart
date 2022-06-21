import 'package:flutter/material.dart';
import 'package:myapp/models/category_news_model.dart';
import 'package:myapp/data/news_data.dart';

class NewsScreen extends StatefulWidget {
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  
  List<CategoryNewsModel> categories = new List<CategoryNewsModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      title: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text("Flutter", style: TextStyle(color: Colors.black)),
        Text("News", style: TextStyle(color: Colors.blue))
      ]),
      centerTitle: true,
      elevation: 0.0,
    ),
    body: Container(
      child:
    ),
    );
  }
}

class CategoryTile extends StatelessWidget {

  final imageUrl, categorieName;
  CategoryTile({this.imageUrl, this.categorieName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.network(imageUrl, width: 120, height: 60),
        ],
      ),
      
    );
  }
}