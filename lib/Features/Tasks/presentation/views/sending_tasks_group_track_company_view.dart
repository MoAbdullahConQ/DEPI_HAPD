import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/sending_tasks_group_track_company_view_body.dart';
import 'package:flutter/material.dart';

class SendingTasksGroupTrackCompanyView extends StatelessWidget {
  const SendingTasksGroupTrackCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SendingTasksGroupTrackCompanyViewBody(),
      ),
    );
  }
}
