import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class InstructionalVideoSlider extends StatefulWidget {
  final List<String> videoAssets = [
    'assets/instruction_videos/Model_create.mov',
    'assets/instruction_videos/datasource_create_small.mov',
    'assets/instruction_videos/bot_create_chat_small.mov',
  ];

  InstructionalVideoSlider({super.key});

  @override
  State<InstructionalVideoSlider> createState() =>
      _InstructionalVideoSliderState();
}

class _InstructionalVideoSliderState extends State<InstructionalVideoSlider> {
  late PageController _pageController;
  late List<VideoPlayerController> _videoControllers;
  int _currentPage = 0;
  final List<String> steps = [
    'Create an AI Model.',
    'Set Up a Data Source.',
    'Create your AI Bot and ask questions.',
  ];
  final List<String> instructions = [
    'Watch the video to learn how to configure and set up your AI model.',
    'Follow the video guide to add a data source.\nYou can choose either a YouTube video transcript or Google Drive files as your data feed.',
    'Use the video instructions to create your AI bot.\nSelect the AI model and data source you configured in the earlier steps.',
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _videoControllers = widget.videoAssets.map((asset) {
      final controller = VideoPlayerController.asset(asset);
      controller.addListener(() {
        //checking the duration and position every time
        if (controller.value.position == controller.value.duration &&
            !controller.value.isPlaying &&
            controller.value.isInitialized) {
          // Pause the video and update the UI when playback finishes
          controller.pause();
          setState(() {});
        }
      });
      controller.initialize();
      return controller;
    }).toList();
  }

  @override
  void dispose() {
    _pageController.dispose();
    for (var controller in _videoControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _playCurrentVideo() {
    for (var i = 0; i < _videoControllers.length; i++) {
      if (i == _currentPage) {
        _videoControllers[i].play();
      } else {
        _videoControllers[i].pause();
      }
    }
  }

  void _goToNextPage() {
    if (_currentPage < widget.videoAssets.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToPreviousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF8E44AD), // Deep Purple
            Color(0xFF3498DB), // Royal Bluernt Orange Medium BlueMedium Gray
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SizedBox(
        height:
            MediaQuery.of(context).size.height * 0.6, // Define a fixed height
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: widget.videoAssets.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                  _playCurrentVideo();
                },
                itemBuilder: (context, index) {
                  final controller = _videoControllers[index];
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: AspectRatio(
                              aspectRatio: controller.value.aspectRatio,
                              child: VideoPlayer(controller),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Step ${index + 1}: ${steps[index]}',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onTertiaryFixedVariant,
                                fontStyle: FontStyle.italic,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          instructions[index],
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).disabledColor,
                                    fontStyle: FontStyle.italic,
                                  ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _currentPage > 0 ? _goToPreviousPage : null,
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  onPressed: () {
                    final currentController = _videoControllers[_currentPage];
                    if (currentController.value.isPlaying) {
                      currentController.pause();
                    } else {
                      currentController.play();
                    }
                    setState(() {});
                  },
                  child: Icon(
                    _videoControllers[_currentPage].value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: _currentPage < widget.videoAssets.length - 1
                      ? _goToNextPage
                      : null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
