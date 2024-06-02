import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';
import 'package:note_taking_app/core/utils/widgets/custom_container.dart';
import 'package:note_taking_app/features/home/presentation/views/custom_icon_bottom_app_bar.dart';

class CustomBtnAppBar extends StatefulWidget {
  const CustomBtnAppBar({super.key});

  @override
  State<CustomBtnAppBar> createState() => _CustomBtnAppBarState();
}

class _CustomBtnAppBarState extends State<CustomBtnAppBar> {
  // List of icons
  final List<String> iconList = const [
    Assets.imagesNote,
    Assets.imagesCheakednote,
    Assets.imagesLamp,
    Assets.imagesSettings,
  ];

  int _selectedIndex = 0;

  void _onIconTapped(int index) {
    setState(() {
      if (_selectedIndex != index) {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: iconList
            .asMap()
            .entries
            .map(
              (e) => e.key == 1 || e.key == 2
                  ? Padding(
                      padding: EdgeInsets.only(
                        left: e.key == 2 ? 60 : 0,
                        right: e.key == 1 ? 60 : 0,
                      ),
                      child: CustomIconBottomAppBar(
                        onTap: () => _onIconTapped(e.key),
                        image: e.value,
                        isSelected: _selectedIndex == e.key,
                      ),
                    )
                  : CustomIconBottomAppBar(
                      onTap: () => _onIconTapped(e.key),
                      image: e.value,
                      isSelected: _selectedIndex == e.key,
                    ),
            )
            .toList(),
      ),
    );
  }
}
