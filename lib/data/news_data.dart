import 'package:myapp/models/category_news_model.dart';

List<CategoryNewsModel> getCategories() {
  List<CategoryNewsModel> category = new List<CategoryNewsModel>();
  CategoryNewsModel categoryNewsModel = new CategoryNewsModel();

  // 1
  categoryNewsModel.categoriName = "Bussines";
  categoryNewsModel.imageUrl = "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80";

  category.add(categoryNewsModel);

  //2
  categoryNewsModel = new CategoryNewsModel();
  categoryNewsModel.categoriName = "Entertaiment";
  categoryNewsModel.imageUrl = "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80";

  category.add(categoryNewsModel);

  //3
  categoryNewsModel = new CategoryNewsModel();
  categoryNewsModel.categoriName = "Entertaiment";
  categoryNewsModel.imageUrl = "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";

  category.add(categoryNewsModel);

  //4
  categoryNewsModel = new CategoryNewsModel();
  categoryNewsModel.categoriName = "General";
  categoryNewsModel.imageUrl = "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";

  category.add(categoryNewsModel);

  //5
  categoryNewsModel = new CategoryNewsModel();
  categoryNewsModel.categoriName = "Health";
  categoryNewsModel.imageUrl = "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";

  category.add(categoryNewsModel);

  //5
  categoryNewsModel = new CategoryNewsModel();
  categoryNewsModel.categoriName = "Health";
  categoryNewsModel.imageUrl = "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";

  category.add(categoryNewsModel);

  //5
  categoryNewsModel = new CategoryNewsModel();
  categoryNewsModel.categoriName = "Science";
  categoryNewsModel.imageUrl = "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";

  category.add(categoryNewsModel);

  //6
  categoryNewsModel = new CategoryNewsModel();
  categoryNewsModel.categoriName = "Sports";
  categoryNewsModel.imageUrl = "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";

  category.add(categoryNewsModel);

  //6
  categoryNewsModel = new CategoryNewsModel();
  categoryNewsModel.categoriName = "Technology";
  categoryNewsModel.imageUrl = "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";

  category.add(categoryNewsModel);

  return category;
}
