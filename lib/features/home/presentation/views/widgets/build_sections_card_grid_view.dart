import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taking_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/section_card_grid_view.dart';

class BuildSectionsCardGridView extends StatelessWidget {
  const BuildSectionsCardGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is FetchSectionsSuccess) {
          return SectionsCardGridView(
            sections: state.sections,
          );
        } else {
          return const SectionsCardGridView(
            sections: [],
          );
        }
      },
    );
  }
}
