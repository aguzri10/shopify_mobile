import 'package:shopify_mobile/styles/asset.dart';

class CategoryModel {
  final String id, icon, name;

  CategoryModel({this.id, this.icon, this.name});
}

List<CategoryModel> categories = [
  CategoryModel(id: '1', icon: iconShirt, name: 'Baju Pria'),
  CategoryModel(id: '1', icon: iconDress, name: 'Baju Wanita'),
  CategoryModel(id: '1', icon: iconManBag, name: 'Tas Pria'),
  CategoryModel(id: '1', icon: iconWomanBag, name: 'Tas Wanita'),
  CategoryModel(id: '1', icon: iconManShoes, name: 'Sepatu Pria'),
  CategoryModel(id: '1', icon: iconWomanShoes, name: 'Sepatu Wanita'),
];
