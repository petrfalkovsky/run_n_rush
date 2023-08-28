// ignore_for_file: library_private_types_in_public_api, unused_import

import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';

class PlayPauseWidget extends StatefulWidget {
  const PlayPauseWidget({super.key});

  @override
  _PlayPauseWidgetState createState() => _PlayPauseWidgetState();
}

class _PlayPauseWidgetState extends State<PlayPauseWidget> {
  bool _isPlaying = false;

  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _togglePlayPause,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 92,
          height: 92,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            // color: AppColors.accent[1],
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
            child: _isPlaying
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
    );
  }
}
