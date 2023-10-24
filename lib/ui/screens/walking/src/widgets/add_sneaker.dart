// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

import '../../../../shared/all_shared.dart';
import '../../walking.dart';

class AddSneakerWidget extends StatefulWidget {
  AddSneakerWidget({
    Key? key,
  }) : super(key: key);

  @override
  AddSneakerWidgetState createState() => AddSneakerWidgetState();
}

class AddSneakerWidgetState extends State<AddSneakerWidget> {
  final WalkingController controller = Get.find<WalkingController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.find<GeneralScaffoldService>().goToPage(1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DottedBorder(
          dashPattern: const [12, 4],
          color: const Color(0xFF1DB9DD),
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          padding: const EdgeInsets.all(6),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: SizedBox(
                width: double.infinity,
                height: 88,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
                    width: double.infinity,
                    height: 88,
                    child: _buildFirstSneaker(),
                  ),
                )),
          ),
        ),
      ),
    );
  }

  Widget _buildFirstSneaker() {
    final sneakerList = Get.find<WalkingController>().sneakerList;

    if (sneakerList.isEmpty) {
      return Stack(alignment: Alignment.center, children: [
        Image.asset(AppIcons.disabledJogger),
        Container(
          color: Colors.black.withOpacity(0.05),
        ),
        const Icon(
          Icons.add,
          color: Color(0xFF1DB9DD),
          size: 36,
        ),
      ]);
    } else {
      return Row(
        children: [
          20.w,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Container(
                  constraints:
                      const BoxConstraints(maxWidth: 160, maxHeight: 30),
                  child: AutoSizeText(
                    sneakerList[0].title ?? 'jogger_2023'.tr(),
                    style: AppStyles.headline.andColor(AppColors.accent),
                  ),
                ),
              ),
              17.h,
              Text(
                '#${sneakerList[0].id?.substring(0, 8)}',
                style: AppStyles.body.andColor(AppColors.accent),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 80,
                child: Image.network(sneakerList[0].imageUrl ?? ''),
              ),
            ],
          ),
          20.w,
        ],
      );
    }
  }
}
