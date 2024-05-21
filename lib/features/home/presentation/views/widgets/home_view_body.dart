import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:note_taking_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/show_spacing_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: CustomScrollView(
        slivers: [
          // --cusom app bar--
          const SliverToBoxAdapter(child: CustomHomeAppBar()),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          const SliverToBoxAdapter(child: ShowSpacingCard()),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverFillRemaining(
            hasScrollBody: false,
            child: SizedBox(
              height: 500,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return const Card(
                    elevation: 1,
                    color: Colors.purple,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
