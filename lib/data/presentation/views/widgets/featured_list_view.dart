import 'package:booklyapp/data/presentation/views/widgets/Custom_Book_Item.dart';
import 'package:flutter/material.dart';

class FeauturesBooksListView extends StatelessWidget {
  const FeauturesBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: const CustomBookImage());
        },
      ),
    );
  }
}
