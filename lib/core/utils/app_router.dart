import 'dart:math';

import 'package:depi_hapd/Features/Announcement/presentation/views/announcement_minstry_view.dart';
import 'package:depi_hapd/Features/Announcement/presentation/views/create_announcement_company_view.dart';
import 'package:depi_hapd/Features/Announcement/presentation/views/create_announcement_ministry_view.dart';
import 'package:depi_hapd/Features/Announcement/presentation/views/detalis_announcement_ministry_view.dart';
import 'package:depi_hapd/Features/Announcement/presentation/views/detalis_announcement_student_view.dart';
import 'package:depi_hapd/Features/Announcement/presentation/views/recieve_announcement_company_view.dart';
import 'package:depi_hapd/Features/Announcement/presentation/views/recieve_announcement_student_view.dart';
import 'package:depi_hapd/Features/Announcement/presentation/views/send_recieve_announcement_company_view.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/login_view.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/register_one_view.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/register_three_view.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/register_two_view.dart';
import 'package:depi_hapd/Features/CompanyManagementMinistry/presentation/views/add_company_to_ministry_view.dart';
import 'package:depi_hapd/Features/CompanyManagementMinistry/presentation/views/companies_ministry_view.dart';
import 'package:depi_hapd/Features/Complaints/presentation/views/complaints_company_view.dart';
import 'package:depi_hapd/Features/Complaints/presentation/views/complaints_details_company_view.dart';
import 'package:depi_hapd/Features/Complaints/presentation/views/complaints_details_ministry_view.dart';
import 'package:depi_hapd/Features/Complaints/presentation/views/complaints_ministry_view.dart';
import 'package:depi_hapd/Features/Complaints/presentation/views/complaints_student_view.dart';
import 'package:depi_hapd/Features/Home/presentation/views/home_company_view.dart';
import 'package:depi_hapd/Features/Home/presentation/views/home_ministry_view.dart';
import 'package:depi_hapd/Features/Home/presentation/views/home_student_view.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/account_setting_student_view.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/setting_ministry_view.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/setting_student_view.dart';
import 'package:depi_hapd/Features/Splash/presentation/views/splash_view.dart';
import 'package:depi_hapd/Features/StudentsCompany/presentation/views/detalid_student_company_view.dart';
import 'package:depi_hapd/Features/StudentsCompany/presentation/views/student_company_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/assignments_company_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/attached_tasks_files_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/attendnce_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/details_tasks_student_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/material_one_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/material_three_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/material_two_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/received_tasks_group_track_company_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/review_details_student_tasks_group_track_company_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/review_student_tasks_group_track_company_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/select_student_tasks_group_track_company_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/send_reports_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/sending_tasks_group_track_company_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/tasks_done_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/tasks_student_view.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/time_and_places_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/add_sub_topic_track_ministry_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/add_topic_tracks_ministry_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/add_tracks_ministry_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/courses_student_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/details_course_student_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/groups_track_compony_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/only_group_track_company.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/recording_technical_courses_student_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/sub_topic_tracks_ministry_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/topic_tracks_ministry_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/tracks_company_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/widgets/tracks_ministry_view_body.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kRegisterOneView = '/registerOneView';
  static const kRegisterTwoView = '/registerTwoView';
  static const kRegisterThreeView = '/registerThreeView';

//Home Feature
  static const kHomeStudentView = '/homeStudentView';
  static const kHomeMinistryView = '/homeMinistryView';
  static const kHomeCompanyView = '/homeCompanyView';

//Tasks Feature
//Tasks student
  static const kTasksStudentView = '/tasksStudentView';
  static const kTasksDoneView = '/tasksDoneView';
  static const kDetailsTasksStudentView = '/detailsTasksStudentView';
  static const kAttachedTasksFilesView = '/attachedTasksFilesView';
  //Tasks company
  static const kAssignmentsCompanyView = '/assignmentsCompanyView';
  static const kSendingTasksGroupTrackCompanyView =
      '/sendingTasksGroupTrackCompanyView';
  static const kSelectStudentTasksGroupTrackCompanyView =
      '/selectStudentTasksGroupTrackCompanyView';
  static const kReceivedTasksGroupTrackCompanyView =
      '/receivedTasksGroupTrackCompanyView';
  static const kReviewStudentTasksGroupTrackCompanyView =
      '/reviewStudentTasksGroupTrackCompanyView';
  static const kReviewDetailsStudentTasksGroupTrackCompanyView =
      '/reviewDetailsStudentTasksGroupTrackCompanyView';
  static const kAttendnceView = '/attendnceView';
  static const kMaterialOneView = '/materialOneView';
  static const kMaterialTwoView = '/materialTwoView';
  static const kMaterialThreeView = '/materialThreeView';
  static const kTimeAndPlacesView = '/timeAndPlacesView';
  static const kSendReportsView = '/sendReportsView';

//CompanyManagementMinistry
  static const kCompaniesMinistryView = '/companiesMinistryView';
  static const kAddCompanyToMinistryView = '/addCompanyToMinistryView';

// Tracks Minstry & Company & Student Feature
// Tracks Ministry
  static const kTracksMinistryView = '/tracksMinistryView';
  static const kAddTracksMinistryView = '/addTracksMinistryView';
  static const kTopicTracksMinistryView = '/topicTracksMinistryView';
  static const kAddTopicTracksMinistryView = '/addTopicTracksMinistryView';
  static const kSubTopicTracksMinistryView = '/subTopicTracksMinistryView';
  static const kAddSubTopicTrackMinistryView = '/addSubTopicTrackMinistryView';
// Tracks Company
  static const kTracksCompanyView = '/tracksCompanyView';
  static const kGroupsTrackComponyView = '/groupsTrackComponyView';
  static const kOnlyGroupTrackCompany = '/onlyGroupTrackCompany';
// Tracks Student
  static const kCoursesStudentView = '/coursesStudentView';
  static const kDetailsCourseStudentView = '/detailsCourseStudentView';
  static const kRecordingTechnicalCoursesStudentView =
      '/recordingTechnicalCoursesStudentView';

// Setting
  static const kSettingStudentView = '/settingStudentView';
  static const kAccountSettingStudentView = '/accountSettingStudentView';
  static const kSettingMinistryView = '/settingMinistryView';

// Announcement Minstry & Company & Student
// Announcement Minstry
  static const kAnnouncementMinstryView = '/announcementMinstryView';
  static const kCreateAnnouncementMinistryView =
      '/createAnnouncementMinistryView';
  static const kDetalisAnnouncementMinistryView =
      '/detalisAnnouncementMinistryView';
// Announcement Company
  static const kSendRecieveAnnouncementView = '/sendRecieveAnnouncementView';
  static const kCreateAnnouncementCompanyView =
      '/createAnnouncementCompanyView';
  static const kRecieveAnnouncementView = '/recieveAnnouncementView';
// Announcement Student
  static const kRecieveAnnouncementStudentView =
      '/recieveAnnouncementStudentView';
  static const kDetalisAnnouncementStudentView =
      '/detalisAnnouncementStudentView';

// Complaints
  static const kComplaintsStudentView = '/complaintsStudentView';
  static const kComplaintsMinistryView = '/complaintsMinistryView';
  static const kComplaintsDetailsMinistryView =
      '/complaintsDetailsMinistryView';
  static const kComplaintsCompanyView = '/complaintsCompanyView';
  static const kComplaintsDetailsCompanyView = '/complaintsDetailsCompanyView';

  static const kStudentCompanyView = '/studentCompanyView';
  static const kDetalidStudentCompanyView = '/detalidStudentCompanyView';

  static final routers = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
          path: kLoginView,
          builder: (context, state) {
            final email = state.uri.queryParameters['email']??'';
            final password = state.uri.queryParameters['password']??'';
            return LoginView(
              email: email!,
              password: password!,
            );
          }),
      GoRoute(
        path: kRegisterOneView,
        builder: (context, state) => const RegisterOneView(),
      ),
      GoRoute(
          path: kRegisterTwoView,
          builder: (context, state) {
            final arabicName = state.uri.queryParameters['arabicName'];
            final englishName = state.uri.queryParameters['englishName'];
            final nationalID = state.uri.queryParameters['nationalID'];
            final dateOfBirth = state.uri.queryParameters['dateOfBirth'];
            final gender = state.uri.queryParameters['gender'];
            final government = state.uri.queryParameters['government'];

            return RegisterTwoView(
              arabicName: arabicName ?? '',
              englishName: englishName ?? '',
              nationalID: nationalID ?? '',
              dateOfBirth: dateOfBirth ?? '',
              gender: gender ?? '',
              government: government ?? '',
            );
          }),
      GoRoute(
        path: kRegisterThreeView,
        builder: (context, state) {
          final arabicName = state.uri.queryParameters['arabicName'];
          final englishName = state.uri.queryParameters['englishName'];
          final nationalID = state.uri.queryParameters['nationalID'];
          final dateOfBirth = state.uri.queryParameters['dateOfBirth'];
          final gender = state.uri.queryParameters['gender'];
          final government = state.uri.queryParameters['government'];
          final email = state.uri.queryParameters['email'];
          final password = state.uri.queryParameters['password'];
          final phone = state.uri.queryParameters['phone'];
          final linkedIn = state.uri.queryParameters['linkedIn'];

          return RegisterThreeView(
            arabicName: arabicName ?? '',
            englishName: englishName ?? '',
            nationalID: nationalID ?? '',
            dateOfBirth: dateOfBirth ?? '',
            gender: gender ?? '',
            government: government ?? '',
            email: email ?? '',
            password: password ?? '',
            phone: phone ?? '',
            linkedIn: linkedIn ?? '',
          );
        },
      ),

//Home Feature
      GoRoute(
        path: kHomeStudentView,
        builder: (context, state) => const HomeStudentView(),
      ),
      GoRoute(
        path: kHomeMinistryView,
        builder: (context, state) => const HomeMinistryView(),
      ),
      GoRoute(
        path: kHomeCompanyView,
        builder: (context, state) => const HomeCompanyView(),
      ),

//Tasks Feature
//Tasks student
      GoRoute(
        path: kTasksStudentView,
        builder: (context, state) => const TasksStudentView(),
      ),
      GoRoute(
          path: kTasksDoneView,
          builder: (context, state) {
            final itemCount = state.uri.queryParameters['itemCount'];
            final titleAppBar = state.uri.queryParameters['titleAppBar'];

            return TasksDoneView(
              itemCount: itemCount != null ? int.tryParse(itemCount) ?? 0 : 0,
              titleAppBar: titleAppBar ?? '',
            );
          }),
      GoRoute(
          path: kDetailsTasksStudentView,
          builder: (context, state) {
            final taskName = state.uri.queryParameters['taskName'];
            final startDate = state.uri.queryParameters['startDate'];
            final deadline = state.uri.queryParameters['deadline'];

            return DetailsTasksStudentView(
              taskName: taskName ?? '',
              startDate: startDate ?? '',
              deadline: deadline ?? '',
            );
          }),
      GoRoute(
          path: kAttachedTasksFilesView,
          builder: (context, state) {
            final taskName = state.uri.queryParameters['taskName'];

            return AttachedTasksFilesView(
              taskName: taskName ?? '',
            );
          }),
//Tasks company
      GoRoute(
          path: kAssignmentsCompanyView,
          builder: (context, state) {
            return const AssignmentsCompanyView();
          }),
      GoRoute(
          path: kSendingTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const SendingTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kSelectStudentTasksGroupTrackCompanyView,
          builder: (context, state) {
            final appbarName = state.uri.queryParameters['appbarName'];
            return SelectStudentTasksGroupTrackCompanyView(
              appbarName: appbarName ?? '',
            );
          }),
      GoRoute(
          path: kReceivedTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const ReceivedTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kReviewStudentTasksGroupTrackCompanyView,
          builder: (context, state) {
            final taskName = state.uri.queryParameters['taskName'];
            return ReviewStudentTasksGroupTrackCompanyView(
                taskName: taskName ?? '');
          }),
      GoRoute(
          path: kReviewDetailsStudentTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const ReviewDetailsStudentTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kAttendnceView,
          builder: (context, state) {
            return const AttendnceView();
          }),
      GoRoute(
          path: kMaterialOneView,
          builder: (context, state) {
            return const MaterialOneView();
          }),
      GoRoute(
          path: kMaterialTwoView,
          builder: (context, state) {
            return const MaterialTwoView();
          }),
      GoRoute(
          path: kMaterialThreeView,
          builder: (context, state) {
            return const MaterialThreeView();
          }),
      GoRoute(
          path: kTimeAndPlacesView,
          builder: (context, state) {
            return const TimeAndPlacesView();
          }),
      GoRoute(
          path: kSendReportsView,
          builder: (context, state) {
            return const SendReportsView();
          }),

//Company Management Ministry
      GoRoute(
          path: kCompaniesMinistryView,
          builder: (context, state) {
            return const CompaniesMinistryView();
          }),
      GoRoute(
          path: kAddCompanyToMinistryView,
          builder: (context, state) {
            return const AddCompanyToMinistryView();
          }),

// Tracks Minstry & Company & Student Feature
// Tracks Ministry
      GoRoute(
          path: kTracksMinistryView,
          builder: (context, state) {
            return const TracksMinistryViewBody();
          }),
      GoRoute(
          path: kAddTracksMinistryView,
          builder: (context, state) {
            return const AddTracksMinistryView();
          }),
      GoRoute(
          path: kTopicTracksMinistryView,
          builder: (context, state) {
            return const TopicTracksMinistryView();
          }),
      GoRoute(
          path: kAddTopicTracksMinistryView,
          builder: (context, state) {
            return const AddTopicTracksMinistryView();
          }),
      GoRoute(
          path: kSubTopicTracksMinistryView,
          builder: (context, state) {
            return const SubTopicTracksMinistryView();
          }),
      GoRoute(
          path: kAddSubTopicTrackMinistryView,
          builder: (context, state) {
            return const AddSubTopicTrackMinistryView();
          }),
// Tracks Company
      GoRoute(
          path: kTracksCompanyView,
          builder: (context, state) {
            return const TracksCompanyView();
          }),
      GoRoute(
          path: kGroupsTrackComponyView,
          builder: (context, state) {
            return const GroupsTrackComponyView();
          }),
      GoRoute(
          path: kOnlyGroupTrackCompany,
          builder: (context, state) {
            return const OnlyGroupTrackCompany();
          }),
// Tracks CoursesStudent
      GoRoute(
          path: kCoursesStudentView,
          builder: (context, state) {
            return const CoursesStudentView();
          }),
      GoRoute(
          path: kDetailsCourseStudentView,
          builder: (context, state) {
            return const DetailsCourseStudentView();
          }),
      GoRoute(
          path: kRecordingTechnicalCoursesStudentView,
          builder: (context, state) {
            return const RecordingTechnicalCoursesStudentView();
          }),

//Setting Feature Student&Ministry
//Setting Student
      GoRoute(
          path: kSettingStudentView,
          builder: (context, state) {
            return const SettingStudentView();
          }),
      GoRoute(
          path: kAccountSettingStudentView,
          builder: (context, state) {
            return const AccountSettingStudentView();
          }),
//Setting Ministry
      GoRoute(
          path: kSettingMinistryView,
          builder: (context, state) {
            return const SettingMinistryView();
          }),

// Announcement Minstry & Company & Student
//Announcement Ministry
      GoRoute(
          path: kAnnouncementMinstryView,
          builder: (context, state) {
            return const AnnouncementMinstryView();
          }),
      GoRoute(
          path: kCreateAnnouncementMinistryView,
          builder: (context, state) {
            return const CreateAnnouncementMinistryView();
          }),
      GoRoute(
          path: kDetalisAnnouncementMinistryView,
          builder: (context, state) {
            return const DetalisAnnouncementMinistryView();
          }),
//Announcement Company
      GoRoute(
          path: kSendRecieveAnnouncementView,
          builder: (context, state) {
            return const SendRecieveAnnouncementView();
          }),
      GoRoute(
          path: kCreateAnnouncementCompanyView,
          builder: (context, state) {
            return const CreateAnnouncementCompanyView();
          }),
      GoRoute(
          path: kRecieveAnnouncementView,
          builder: (context, state) {
            return const RecieveAnnouncementView();
          }),
// Announcement Student
      GoRoute(
          path: kRecieveAnnouncementStudentView,
          builder: (context, state) {
            return const RecieveAnnouncementStudentView();
          }),
      GoRoute(
          path: kDetalisAnnouncementStudentView,
          builder: (context, state) {
            return const DetalisAnnouncementStudentView();
          }),

// Complaints
      GoRoute(
          path: kComplaintsStudentView,
          builder: (context, state) {
            return const ComplaintsStudentView();
          }),
      GoRoute(
          path: kComplaintsMinistryView,
          builder: (context, state) {
            return const ComplaintsMinistryView();
          }),
      GoRoute(
          path: kComplaintsDetailsMinistryView,
          builder: (context, state) {
            return const ComplaintsDetailsMinistryView();
          }),
      GoRoute(
          path: kComplaintsCompanyView,
          builder: (context, state) {
            return const ComplaintsCompanyView();
          }),
      GoRoute(
          path: kComplaintsDetailsCompanyView,
          builder: (context, state) {
            return const ComplaintsDetailsCompanyView();
          }),

      GoRoute(
          path: kStudentCompanyView,
          builder: (context, state) {
            return const StudentCompanyView();
          }),

      GoRoute(
          path: kDetalidStudentCompanyView,
          builder: (context, state) {
            return const DetalidStudentCompanyView();
          }),
    ],
  );
}
