// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:note_taking_app/features/home/data/models/sections_model.dart';
// import 'package:note_taking_app/features/home/presentation/manager/cubit/home_cubit.dart';
// import 'package:note_taking_app/features/home/presentation/views/widgets/section_card_grid_view.dart';

// class BuildSectionsCardGridView extends StatelessWidget {
//   const BuildSectionsCardGridView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<HomeCubit, HomeState>(
//       builder: (context, state) {
//         List<SectionsModel> sectionsList =
//             BlocProvider.of<HomeCubit>(context).sectionsList;

//         return SectionsCardGridView(
//           // sections: sectionsList,
//         );
//       },
//       listener: (context, state) {
//         if (state is HomeLoading ||
//             state is FetchNotesSuccess ||
//             state is AddNewSectionSuccess ||
//             state is DeleteSectionSuccess) {
//           BlocProvider.of<HomeCubit>(context).fetchSections();
//         }
//       },
//     );
//   }
// }
