import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/add_note_view.dart';

class AddNewNoteCard extends StatelessWidget {
  const AddNewNoteCard({super.key, required this.boxName});
  final String boxName;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 128, maxHeight: 171),
      child: AspectRatio(
        aspectRatio: 128 / 171,
        child: GestureDetector(
          onTap: () {
            //print('hello');
          },
          child: GestureDetector(
            onTap: () {
              // view bage to add note
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddNoteView(
                    boxName: boxName,
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 5, left: 8, right: 30),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 1,
                    color: Colors.purple.withOpacity(0.2),
                  ),
                ),
                color: const Color(0xffebe7fd).withOpacity(0.8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(
                        side: BorderSide(
                          color: const Color.fromARGB(255, 44, 33, 46)
                              .withOpacity(0.5),
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  // text
                  Text(
                    'New note',
                    style: AppTextStyles.textStyle14SemiBold,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
