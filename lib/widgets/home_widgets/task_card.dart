import 'package:flutter/material.dart';
import 'package:task/utils/constants.dart';
import 'package:task/utils/fonts.dart';
import 'package:task/widgets/space_horizontal.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            color: Theme.of(context).secondaryHeaderColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Titulo',
                    style: FontsApp.avenirWhite,
                  ),
                  Text(
                    'Descripción',
                    style: FontsApp.avenirWhite,
                  ),
                  Text('Repetición',style: FontsApp.avenirWhite,)
                ],
              ),
            ),
          ),
        ),
        SpaceHorizontal(Constants.marginBig),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle
          ),
        )
      ],
    );
  }
}
