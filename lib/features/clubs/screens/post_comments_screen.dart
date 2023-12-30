import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/features/clubs/components/club_post_item.dart';

import '../components/comment_text_field.dart';

class PostCommentsScreen extends StatelessWidget {
  const PostCommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ClubPostItem(isMainPost: true),
                  24.h.ph,
                  Text(
                    '${StringsManager.theReplies} (2)',
                    style: StylesManager.textStyle16BlackSemiBold,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => 16.h.ph,
                    itemCount: 2,
                    itemBuilder: (context, index) =>
                        const ClubPostItem(isComment: true),
                  )
                ],
              ),
            ),
          ),
          const CommentTextField()
        ],
      ),
    );
  }
}
