import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/Styles.dart';
import 'package:booklyapp/data/presentation/views/widgets/Books_Action.dart';
import 'package:booklyapp/data/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/data/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/data/presentation/views/widgets/Custom_Book_Item.dart';
import 'package:booklyapp/data/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class bookDetailsViewBody extends StatelessWidget {
  const bookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomBookImage(),
          ),
          const SizedBox(
            height: 38,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textstyle30.copyWith(
                fontWeight: FontWeight.bold, fontFamily: KGtSectraFine),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 27,
          ),
          BooksAction(),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can Also Like',
              style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarBooksListview(),
        ],
      ),
    );
  }
}
