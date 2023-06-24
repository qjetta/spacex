import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:logger/logger.dart';
import 'package:spacex/controller/cubit/repository_cubit.dart';
import 'package:spacex/model/repository.dart';

import 'controller/go_router.dart';

var logger = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  EquatableConfig.stringify = true;

  // turn off the # in the URLs on the web
  usePathUrlStrategy();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        //TODO add others
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: BlocProvider<RepositoryCubit>(
        create: (context) {
          var repo = Repository();
          repo.init();
          return RepositoryCubit(repository: repo);
        },
        child: const SpaceXApp(),
      ),
    ),
  );
}

class SpaceXApp extends StatelessWidget {
  const SpaceXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
