import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_n_rush/ui/screens/walking/src/walking_controller.dart';

class OtherSneakersWidget extends StatelessWidget {
  const OtherSneakersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sneakerList = Get.find<WalkingController>().sneakerList;
    List<Widget> sneakerWidgets = [];

    for (int i = 1; i < 5; i++) {
      if (i < sneakerList.length) {
        final sneaker = sneakerList[i];
        if (sneaker.imageUrl != null) {
          sneakerWidgets.add(
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DottedBorder(
                  dashPattern: const [12, 4],
                  color: const Color(0xFF1DB9DD),
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            color: Colors.black.withOpacity(0.05),
                          ),
                          SizedBox(
                            width: 100,
                            height: 80,
                            child: Image.network(sneaker.imageUrl ?? ''),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        } else {
          // Если элемента нет или нет imageUrl, показываем виджет с иконкой Icons.add
          sneakerWidgets.add(
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DottedBorder(
                  dashPattern: const [12, 4],
                  color: const Color(0xFF1DB9DD),
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: Icon(
                        Icons.add,
                        color: Color(0xFF1DB9DD),
                        size: 36,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      } else {
        // Если i больше или равно длине списка, показываем виджет с иконкой Icons.add
        sneakerWidgets.add(
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DottedBorder(
                dashPattern: const [12, 4],
                color: const Color(0xFF1DB9DD),
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: Icon(
                      Icons.add,
                      color: Color(0xFF1DB9DD),
                      size: 36,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }

    return Row(
      children: sneakerWidgets,
    );
  }
}
