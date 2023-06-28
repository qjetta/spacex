import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/main_cubit.dart';
import 'package:spacex/model/repository.dart';

import '../helper/mock_storage.dart';

class TopTestWidget extends StatelessWidget {
  final Widget child;
  const TopTestWidget({
    super.key,
    required this.repository,
    required this.child,
  });

  final IRepository repository;

  @override
  Widget build(
    BuildContext context,
  ) {
    return EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      useFallbackTranslations: true,
      child: BlocProvider<MainCubit>(
        create: (context) => MainCubit(
          repository: repository,
          storage: MockStorage(),
        ),
        child: Builder(builder: (context) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            builder: (_, __) => child,
          );
        }),
      ),
    );
  }
}
