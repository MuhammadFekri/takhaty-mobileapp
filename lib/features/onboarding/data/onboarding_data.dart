import 'package:takhaty/core/resources/images_manager.dart';

class OnBoardingData {
  static const title1 = 'أفضل الخبراء و المختصين';
  static const title2 = 'إحجز موعدك المناسب';
  static const title3 = 'الخصوصية والأمان';

  static const description1 =
      'لدينا خبراء ومختصين متميزين ،مرخصين دولياً و ذوى كفاءة عالية.';
  static const description2 =
      'كافة الإستشارات التى تتعلق بالمشكلات النفسية والسلوكية والزوجية، ومشكلات الإدمان، ومشكلات الأطفال والمراهقين.';
  static const description3 =
      'يحافظ تَخَطِّي على أسرار المشاركين وخصوصيتهم، جميع البيانات والمحادثات مشفرة ولا يمكن لأى طرف الإطلاع عليها.';

  static const image1 = ImagesManager.onboard1;
  static const image2 = ImagesManager.onboard2;
  static const image3 = ImagesManager.onboard3;

  static const List<OnboardingItem> data = [
    OnboardingItem(
      image: image1,
      title: title1,
      description: description1,
    ),
    OnboardingItem(
      image: image2,
      title: title2,
      description: description2,
    ),
    OnboardingItem(
      image: image3,
      title: title3,
      description: description3,
    ),
  ];
}

class OnboardingItem {
  final String image;
  final String title;
  final String description;

  const OnboardingItem({
    required this.image,
    required this.title,
    required this.description,
  });
}
