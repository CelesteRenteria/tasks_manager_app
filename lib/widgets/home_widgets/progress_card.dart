import 'package:flutter/material.dart';
import 'package:task/utils/constants.dart';
import 'package:task/utils/fonts.dart';
import 'package:task/widgets/space_vertical.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Progreso',
                  style: FontsApp.montserratTitleWhite,
                ),
                Text(
                  '1/10\ntareas completadas',
                  style: FontsApp.avenirWhite,
                ),
                SpaceVertical(Constants.marginSmall),
                FilledButton(
                  
                    onPressed: () {},
                    child: Text(Constants.dateFormatter(DateTime.now())))
              ],
            ),
            const Spacer(),
            Container(
              height: 100,
              width: 100,
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              child: Text(''),
            )
          ],
        ),
      ),
    );
  }
}
