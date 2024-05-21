import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: CustomScrollView(
        slivers: [
          // --cusom app bar--
          SliverToBoxAdapter(child: CustomHomeAppBar()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          
        ],
      ),
    );
  }
}
