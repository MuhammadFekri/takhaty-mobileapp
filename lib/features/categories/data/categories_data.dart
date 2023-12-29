import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/router/routes.dart';

import 'model/category_model.dart';

class CategoriesData {
  static const categoryTitle1 = 'إستشارات';
  static const categoryTitle2 = 'منصة الدعم النفسي';
  static const categoryTitle3 = 'نوادى';
  static const categoryTitle4 = 'شخص نفسك';
  static const categoryTitle5 = 'ندوات';
  static const categoryTitle6 = 'خفف صدمتك';

  static const categoryImage1 = ImagesManager.categoryImage1;
  static const categoryImage2 = ImagesManager.categoryImage2;
  static const categoryImage3 = ImagesManager.categoryImage3;
  static const categoryImage4 = ImagesManager.categoryImage4;
  static const categoryImage5 = ImagesManager.categoryImage5;
  static const categoryImage6 = ImagesManager.categoryImage6;

  static const List<CategoryModel> categories = [
    CategoryModel(
        image: categoryImage1,
        title: categoryTitle1,
        screenRoute: AppRouter.personalizeYourselfScreen),
    CategoryModel(
        image: categoryImage2,
        title: categoryTitle2,
        screenRoute: AppRouter.personalizeYourselfScreen),
    CategoryModel(
        image: categoryImage3,
        title: categoryTitle3,
        screenRoute: AppRouter.personalizeYourselfScreen),
    CategoryModel(
        image: categoryImage4,
        title: categoryTitle4,
        screenRoute: AppRouter.personalizeYourselfScreen),
    CategoryModel(
        image: categoryImage5,
        title: categoryTitle5,
        screenRoute: AppRouter.personalizeYourselfScreen),
    CategoryModel(
        image: categoryImage6,
        title: categoryTitle6,
        screenRoute: AppRouter.category6Screen),
  ];
}
