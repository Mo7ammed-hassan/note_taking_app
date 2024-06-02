import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String content;

  const CustomCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              content,
              maxLines: 11,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
