import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stopwatch/ui/stopwatch_renderer.dart';
// import 'package:stopwatch/ui/elapsed_time_text_basic.dart';
import 'dart:async';
import 'elapsed_time_text.dart';

class Stopwatch extends StatefulWidget {
  @override
  _StopwatchState createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch>
    with SingleTickerProviderStateMixin {
  Duration _elapsed = Duration.zero;
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();
    _ticker = this.createTicker((elapsed) {
      setState(() {
        _elapsed = elapsed;
      });
    });
    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final radius = constraints.maxWidth / 2;

        return StopwatchRenderer(
          elapsed: _elapsed,
          radius: radius,
        );
      },
    );
  }
}
