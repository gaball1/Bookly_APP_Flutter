import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/Styles.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/data/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booklyapp/data/presentation/views/widgets/custom_appBar.dart';
import 'package:booklyapp/data/presentation/views/widgets/custom_list_view_body.dart';
import 'package:booklyapp/data/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewbody extends StatelessWidget {
  const HomeViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeauturesBooksListView(),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
