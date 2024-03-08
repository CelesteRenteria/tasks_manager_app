import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/utils/constants.dart';
import 'package:task/utils/fonts.dart';
import 'package:task/widgets/home_widgets/progress_card.dart';
import 'package:task/widgets/home_widgets/search_bar.dart';
import 'package:task/widgets/home_widgets/task_card.dart';
import 'package:task/widgets/space_vertical.dart';

import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¿Qué hacemos hoy?',
                  style: FontsApp.avenirWhite,
                ),
                SpaceVertical(Constants.marginBig),
                SearchBarCustom(),
                SpaceVertical(Constants.marginSmall),
                ProgressCard(),
                SpaceVertical(Constants.margin),
                Text(
                  'Tareas Pendientes',
                  style: FontsApp.montserratTitleWhite,
                ),
                Expanded(child: TaskList())
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 125.sp,
                width: 500.sp,
                child: CustomButton(
                  color: Theme.of(context).primaryColor,
                  borde: Colors.transparent,
                  text: 'Agregar una nueva tarea!',
                  function: () {},
                ),
              ))
        ],
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (i, _) {
          return TaskCard();
        });
  }
}
