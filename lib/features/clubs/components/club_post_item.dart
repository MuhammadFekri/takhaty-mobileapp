import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';
import '../../../core/router/routes.dart';

class ClubPostItem extends StatelessWidget {
  const ClubPostItem({
    this.isComment = false,
    this.isMainPost = false,
    super.key,
  });

  final bool isMainPost;
  final bool isComment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: ColorsManager.spotColor,
                backgroundImage:
                    NetworkImage("https://via.placeholder.com/70x70"),
                radius: 24,
              ),
              16.w.pw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'فاروق محمد',
                    style: StylesManager.textStyle14BlackSemiBold,
                  ),
                  Row(
                    children: [
                      Text(
                        '13:00 PM',
                        style: StylesManager.textStyle12GrayRegular,
                      ),
                      10.w.pw,
                      Text(
                        '20 نوفمبر',
                        style: StylesManager.textStyle12GrayRegular,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          12.h.ph,
          const ReadMoreText(
            'قد تتساءل كيف تحمي طفلك من الأحداث الصادمة؟، خاصة مع تأثر رد فعل طفلك على أي حدث صادم تأثرًا كبيرًا باستجابتك على هذا الحدث؛ إذ أن الأطفال من جميع الأعمار (حتى المراهقين) يلجأون إلى والديهم للحصول على الراحة والطمأنينة في أوقات الأزمات؛ لذلك من من المهم أن تتخذ خطوات دقيقة وصحيحة فيما يخصك ويخص طفلك القادر على ملاحظة القلق والتوتر عليك. حماية الطفل من الأحداث الصادمة هناك العديد من الطرائق لحماية طفلك من الأحداث الصادمة، من ضمنها: تذكر أن الأطفال يتفاعلون مع الأحداث الصادمة بطرق مختلفة يمكن أن تكون مشاعرهم متذبذبة وغير ثابتة، فيكون طفلك مزاجيًا ومنسحبًا في أوقات معينة، وحزينًا وخائفًا في أوقات أخرى، وهنا لا توجد طريقة صحيحة أو خاطئة للشعور بها بعد حدث صادم، لذا لا تحاول أن تجبره على ما يجب أن يفكر فيه أو يشعر به. اسمح له بالحزن على أي خسائر امنح طفلك وقتًا للشفاء والحزن على أي خسائر، فمن الممكن أن يكون قد تعرض لها نتيجة الكارثة أو الحدث الصادم، مثل: فقدان صديق...',
            trimLines: 4,
            colorClickableText: ColorsManager.primaryColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: "عرض المزيد",
            trimExpandedText: "عرض أقل",
            lessStyle:
                TextStyle(fontSize: 14, color: ColorsManager.primaryColor),
            moreStyle:
                TextStyle(fontSize: 14, color: ColorsManager.primaryColor),
          ),
          12.h.ph,
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      ImagesManager.fav,
                      color: ColorsManager.hintGreyColor,
                      height: 24,
                    ),
                    8.w.pw,
                    Text(
                      '21 ${StringsManager.like}',
                      style: StylesManager.textStyle14GrayRegular,
                    ),
                  ],
                ),
              ),
              if (!isMainPost)
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.push(AppRouter.postCommentsScreen);
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          ImagesManager.messageSquare,
                          color: ColorsManager.hintGreyColor,
                          height: 24,
                        ),
                        8.w.pw,
                        Text(
                          '2 ${isComment ? StringsManager.reply : StringsManager.comment}',
                          style: StylesManager.textStyle14GrayRegular,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
