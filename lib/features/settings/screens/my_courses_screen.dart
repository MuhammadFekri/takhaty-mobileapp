import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/strings_manager.dart';

import '../../appointments/components/lecture_appointment_item.dart';

class MyCoursesScreen extends StatefulWidget {
  const MyCoursesScreen({super.key});

  @override
  State<MyCoursesScreen> createState() => _MyCoursesScreenState();
}

class _MyCoursesScreenState extends State<MyCoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.myCourses),
      ),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
                Tab(
                  text: StringsManager.done,
                ),
                Tab(
                  text: StringsManager.inProgress,
                ),
                Tab(
                  text: StringsManager.notStarted,
                ),
              ]),
              Expanded(
                  child: TabBarView(children: [
                ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (context, index) =>
                        const LectureAppointmentItem(),
                    separatorBuilder: (context, index) => 16.h.ph,
                    itemCount: 2),
                ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (context, index) =>
                        const LectureAppointmentItem(),
                    separatorBuilder: (context, index) => 16.h.ph,
                    itemCount: 2),
                ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (context, index) =>
                        const LectureAppointmentItem(),
                    separatorBuilder: (context, index) => 16.h.ph,
                    itemCount: 2),
              ]))
            ],
          )),
    );
  }
}
