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
          Text("World", style: TextStyle(color: Colors.black)),
          Text("News", style: TextStyle(color: Colors.blue))
        ]),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
          child: Column(children: <Widget>[
        Container(
          height: 70,
          child: ListView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoryTile(
                  imageUrl: categories[index].imageUrl,
                  categoryName: categories[index].categoryName,
                );
              }),
        )
      ])),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imageUrl, categoryName;
  CategoryTile({this.imageUrl, this.categoryName});

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
