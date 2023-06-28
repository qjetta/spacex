import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:spacex/view/screens/launches/launch_list_view.dart';
import 'package:spacex/view/screens/launches/upcoming_launches_screen.dart';

import '../test/helper/mock_repository_35.dart';
import '../test/widget/top_test_widget_widget.dart';
import '../test/helper/test_helper.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  late MockRepository repository;

  group(
    "I Testing Upcoming Launches Screen",
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
