import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/Styles.dart';
import 'package:booklyapp/data/presentation/views/widgets/Books_Action.dart';
import 'package:booklyapp/data/presentation/views/widgets/book_details_section.dart';
import 'package:booklyapp/data/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/data/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/data/presentation/views/widgets/Custom_Book_Item.dart';
import 'package:booklyapp/data/presentation/views/widgets/custom_button.dart';
import 'package:booklyapp/data/presentation/views/widgets/similar_book_section.dart';
import 'package:booklyapp/data/presentation/views/widgets/similar_list_view.dart';
import 'package:flutter/material.dart';

class bookDetailsViewBody extends StatelessWidget {
  const bookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  Expanded(
                    child: SizedBox(height: 20),
                  ),
                  SimilarBooksSection(),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
