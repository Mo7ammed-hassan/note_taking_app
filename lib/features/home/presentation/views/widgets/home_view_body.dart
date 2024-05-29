import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:note_taking_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/note_card_grid_view.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/show_spacing_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 12, left: 12, top: 18),
      child: CustomScrollView(
        slivers: [
          // --cusom app bar--
          SliverToBoxAdapter(child: CustomHomeAppBar()),
          SliverToBoxAdapter(child: SizedBox(height: 35)),
          // spacing card--
          SliverToBoxAdapter(child: ShowSpacingCard()),
          SliverToBoxAdapter(child: SizedBox(height: 65)),
          // card section--
          NoteCardGridView(),
        ],
      ),
    );
  }
}
