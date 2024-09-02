import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_assinment/core/providers/provider.dart';
import '../../core/widgets/card_widget.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, provider, child) {
        return Column(
          children: [
            Stack(
              alignment: const Alignment(0, 2.3),
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: const Color(0xff5D9CEC),
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 35,
                          ),
                          child: Text(
                            "To Do List",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                ),
                EasyInfiniteDateTimeLine(
                  firstDate: DateTime.now().subtract(const Duration(days: 365)),
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                  showTimelineHeader: false,
                  focusDate: provider.selectedDate,
                  onDateChange: provider.setDate,
                  activeColor: const Color(0xff5D9CEC),
                  dayProps: EasyDayProps(
                      todayHighlightStyle: TodayHighlightStyle.withBackground,
                      todayHighlightColor: Colors.white60,
                      inactiveDayStyle: DayStyle(
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ))),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            card_widget()
          ],
        );
      },
    );
  }
}
