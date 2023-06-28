import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeWidget extends StatefulWidget {
  final String id;

  const YoutubeWidget({super.key, required this.id});

  @override
  State<YoutubeWidget> createState() => _YoutubeWidgetState();
}

class _YoutubeWidgetState extends State<YoutubeWidget> {
  late YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    GoRouter.of(context).addListener(() {
      _controller.pause();
    });

    var youtubePlayer = YoutubePlayer(
      controller: _controller,
    );

    return YoutubePlayerBuilder(
      player: youtubePlayer,
      builder: (context, player) {
        return Column(
          children: [
            player,
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
