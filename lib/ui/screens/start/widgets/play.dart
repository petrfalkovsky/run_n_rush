import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_n_rush/ui/screens/start/src/start_controller.dart';

class PlayPauseWidget extends StatelessWidget {
  const PlayPauseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final StartController controller = Get.find<StartController>();
      final bool isPlaying = controller.isPlaying.value;

      return Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                if (isPlaying) {
                  controller.walkingFinish();
                  controller.pausePlay();
                } else {
                  controller.walkingStart();
                  controller.startPlay();
                }
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 92,
                height: 92,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF282A66),
                    ),
                    BoxShadow(
                      color: Color(0xFF1DB9DD),
                      spreadRadius: -0.5,
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: isPlaying
                      ? const Icon(
                          Icons.pause_circle_filled,
                          key: ValueKey<int>(1),
                          size: 60,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.play_circle_filled,
                          key: ValueKey<int>(2),
                          size: 60,
                          color: Colors.white,
                        ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
