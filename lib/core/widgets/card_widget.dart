import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class card_widget extends StatelessWidget {
  const card_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Slidable( key: ValueKey("task.id"),
        startActionPane: ActionPane(dismissible: DismissiblePane(onDismissed: () {}),
          motion: ScrollMotion(),
          children: [
            SlidableAction( borderRadius: BorderRadius.circular(10),
              onPressed: (context) {},
              backgroundColor: Colors.red,
              icon: Icons.delete,
              label: "Delete",
            ), SlidableAction( borderRadius: BorderRadius.circular(10),
              onPressed: (context) {},
              backgroundColor: Colors.white,
              icon: Icons.edit,
              label: "edit",
            )
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)),
          width: double.infinity,
          height: 120,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 60,
                  width: 5,
                  decoration: BoxDecoration(
                      color: const Color(0xff5D9CEC),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Task Title",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff5D9CEC)),
                  ),
                  Text("description"),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(Icons.timelapse_outlined),
                      Text("10:00")
                    ],
                  )
                ],
              ),
              Spacer(),
              Container(
                width: 60,
                height: 30,
                child: const Icon(
                  Icons.check_box_rounded,
                  color: Color(0xff5D9CEC),
                  size: 45,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}