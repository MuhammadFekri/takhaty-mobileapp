import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/strings_manager.dart';

import '../components/lecture_appointment_item.dart';
import '../components/session_appointment_item.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({super.key});

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.appointments),
      ),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
                Tab(
                  text: StringsManager.sessions,
                ),
                Tab(
                  text: StringsManager.courses2,
                ),
                Tab(
                  text: StringsManager.lecturers,
                ),
              ]),
              Expanded(
                  child: TabBarView(children: [
                ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (context, index) =>
                        const SessionAppointmentItem(),
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
