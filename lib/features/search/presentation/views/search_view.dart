import 'package:booklyapp/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
