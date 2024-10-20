import 'package:depi_hapd/Features/TracksCourses/presentation/views/widgets/tracks_ministry_view_body.dart';
import 'package:flutter/material.dart';

class TracksMinistryView extends StatelessWidget {
  const TracksMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: TracksMinistryViewBody(),
      ),
    );
  }
}
