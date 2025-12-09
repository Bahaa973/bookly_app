import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/manger/search_books_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchBookCubit, SearchBookState>(
        builder: (context, state) {
          if (state is SearchBookSuccess) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            );
          } else if (state is SearchBookFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else if (state is SearchBookLoading) {
            return const CustomLoadingIndicator();
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
