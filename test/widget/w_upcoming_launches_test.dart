import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex/view/screens/launches/launch_list_view.dart';
import 'package:spacex/view/screens/launches/upcoming_launches_screen.dart';

import '../helper/mock_repository_35.dart';
import 'top_test_widget_widget.dart';
import '../helper/test_helper.dart';

void main() {
  late MockRepository repository;

  group(
    "Testing Upcoming Launches Screen",
    () {
      setUp(
        () async {
          await initTestEnv(integration: true);
          repository = MockRepository();
        },
      );
      testWidgets(
        'Loading 35',
        (tester) async {
          var testedWidget = TopTestWidget(
            repository: repository,
            child: const UpcomingLaunchesScreen(),
          );

          Future.delayed(const Duration(seconds: 1));
          await tester.pumpWidget(testedWidget);
          await tester.pumpAndSettle();

          expect(find.text("launches.upcoming.title".tr()), findsOneWidget);

          Finder listFinder =
              find.byKey(const Key(LaunchListView.launchesListViewKey));

          expect(listFinder, findsOneWidget);

          expect(find.text("name 1"), findsOneWidget);
          expect(find.text("name 2"), findsOneWidget);

          expect(find.text("name 36"), findsNothing);

          await tester.pumpAndSettle(const Duration(seconds: 15));
        },
      );
    },
  );
}
