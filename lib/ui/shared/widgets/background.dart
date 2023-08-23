import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AppIcons.background,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
