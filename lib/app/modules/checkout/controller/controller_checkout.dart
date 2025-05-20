import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProgressBar extends StatelessWidget {
  int stepActuel;

   ProgressBar({super.key,
  required this.stepActuel
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(4, (index) {
        return Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: index<stepActuel? maincolor : homeBg,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            if(index<4)
            Container(
              height: 2,
              width: 50,
              color: homeBg,
            )
          ],
        );
      }),
    );
  }
}
