import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String task;
  final String image;
  const CategoryItem(this.title, this.task, this.image, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 215,
        padding: const EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('    $title', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Text('    $task', style: const TextStyle(fontSize: 14)),
            const Spacer(),
            Image(image: AssetImage('images/$image'))
          ],
        ),
      )
    );
  }
}