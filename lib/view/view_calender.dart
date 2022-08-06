import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class ViewCalender extends StatelessWidget {
  const ViewCalender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TableCalendar(
                  headerStyle: HeaderStyle(
                      headerPadding: EdgeInsets.only(bottom: 10),
                      headerMargin: EdgeInsets.only(bottom: 35)),
                  rowHeight: 60,
                  pageAnimationCurve: Curves.ease,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
