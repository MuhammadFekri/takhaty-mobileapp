import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/strings_manager.dart';

import '../../appointments/components/lecture_appointment_item.dart';

class MyLecturesScreen extends StatefulWidget {
  const MyLecturesScreen({super.key});

  @override
  State<MyLecturesScreen> createState() => _MyLecturesScreenState();
}

class _MyLecturesScreenState extends State<MyLecturesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.myLecturers),
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
