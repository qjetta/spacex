import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/crew_cubit.dart';
import 'package:spacex/ui/components/cached_network_image_with_defaults.dart';
import 'package:spacex/ui/components/error_widget_with_reload.dart';
import 'package:spacex/ui/components/title_with_background_widget.dart';
import 'package:spacex/ui/components/ui_helper.dart';
import 'package:spacex/ui/components/unknown_cubit_state_error_widget.dart';
import 'package:spacex/ui/components/url_widget.dart';

class CrewBodyWidget extends StatelessWidget {
  const CrewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(UIHelper.paddingBig),
      child: Container(
        decoration: UIHelper.getBorderRadiusDecorationOpacity(),
        child: BlocBuilder<CrewCubit, CrewState>(
          builder: (context, state) {
            if (state is CrewInitial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is CrewLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is CrewErrorState) {
              return Center(
                child: ErrorWidgetWithReload(
                  exception: state.exception,
                  onPressed: () => context.read<CrewCubit>().fetch(),
                ),
              );
            }
            if (state is CrewLoadedState) {
              var crewList = state.crew.crew;
              return ListView.builder(
                itemCount: crewList.length,
                itemBuilder: (context, index) {
                  final person = crewList[index];
                  return ListTile(
                    leading: SizedBox(
                      width: 80,
                      child: CachedNetworkImageWithDefaults(url: person.image),
                    ),
                    title: TitleWithBackgroundWidget(
                      title: person.name,
                      level: 2,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(person.agency),
                        URLWidget(person.wikipedia),
                        Text(person.status),
                        Text(person.launches.toString()),
                      ],
                    ),
                  );
                },
              );
            }
            return UnknownCubitStateErrorWidget(
              stateRuntimeType: state.runtimeType,
            );
          },
        ),
      ),
    );
  }
}
